package com.mbb.email;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

import org.grnds.facility.config.GrndsConfiguration;
import org.grnds.facility.config.GrndsConfigurationEnvironment;

import com.mbb.cmn.params.MBBMasterParameterDO;
import com.mbb.cmn.params.MBBParameterConstants;
import com.mbb.cmn.params.MBBParameterMaps;
import com.mbb.common.MBBExtServiceLogUtil;
import com.mbb.email.format.MBBEMailFormat;
import com.mbb.wbs.MBBSORulesExecutor;
import com.s1.arch.exception.S1Exception;
import com.s1.fst.util.Log;

public class MBBEmailUtil {
	
	public static final String INVALID_EMAIL_FROMAT = "Invalid E-Mail format"; 
	private static final String SERVICENAME_EMAIL = "E-MAIL";
	private static final String STATUS_SUCSESS = "SUCSESS";
	private static final String STATUS_EXCEPTION = "EXCEPTION";

	private static final Log _log = new Log(MBBEmailUtil.class,4, "com.mbb.bop");
	private static ResourceBundle emailFormatBundle = null;
	private static String threadPoolSize = "";
	private static MBBEmailUtil emailUtil;
	private MBBEmailUtil(){}
	
	static MBBEmailUtil getInstance(){
		if(null == emailUtil){
			emailUtil = new MBBEmailUtil();
		}
		return emailUtil;
	}
	
	static
	{
		GrndsConfiguration config = GrndsConfiguration.getInstance();			
		GrndsConfigurationEnvironment env = config.getEnvironment("ep");
		threadPoolSize = env.getProperty("mbb.mail.threadPoolSize");
	}
	
	public static void sendEmail(String eMailFormat, String recipient, Object[] parameters) throws S1Exception{
		sendEmail(eMailFormat, recipient, null, null, null, parameters);
	}

	public static void sendEmail(String eMailFormat, String recipient, String txnName, Integer referenceKy, String referenceVal, Object[] parameters) throws S1Exception{
		try {
			if(null == eMailFormat){
				throw new S1Exception(INVALID_EMAIL_FROMAT);
			}
			MBBMasterParameterDO emailSwitch = MBBParameterMaps.getMasterParamData(MBBParameterConstants.CMN_EMAIL_SWITCH);
			if(emailSwitch!=null && "Y".equals(emailSwitch.getParamCode())){
				_log.debug("MBBEmailUtil.sendEmail() CMN_EMAIL_SWITCH is Enabled");
				
				int connectTimeout =0;
				int timeout = 0;
				
				if(null!= emailSwitch.getParamCode1() && emailSwitch.getParamCode1().trim().length() > 0){
					try{
						connectTimeout = Integer.parseInt(emailSwitch.getParamCode1());
					}catch (Exception e) {
						_log.error(" Invalid connectTimeout parameater", "MBBEmailUtil.sendEmail()" , e );
					}
				}
				
				if(null!= emailSwitch.getDescription() && emailSwitch.getDescription().trim().length() > 0){
					try{
						timeout = Integer.parseInt(emailSwitch.getDescription());
					}catch (Exception e) {
						_log.error(" Invalid timeout parameater", "MBBEmailUtil.sendEmail()" , e );
					}
				}
				
				EmailSender email = getInstance(). new EmailSender(eMailFormat, recipient, connectTimeout, timeout, parameters);
				email.setTxnName(txnName);
				email.setReferenceKy(referenceKy);
				email.setReferenceVal(referenceVal);
				sendMail(email);
				
			}
 		} catch (Exception e) {
			_log.error("Exception dring sending message ", e.getMessage(), e);
			e.printStackTrace();
			throw new S1Exception(e.getMessage());
		}
	}
	

	private static ExecutorService mailSendingThreads = null; 
	
	private static void sendMail(EmailSender email){
		
		if(null == mailSendingThreads || mailSendingThreads.isShutdown()){
			int poolSize = 1;
			if(null != threadPoolSize){
				poolSize = Integer.parseInt(threadPoolSize);
			}
			mailSendingThreads = Executors.newFixedThreadPool(poolSize);
		}
		mailSendingThreads.execute(email);
	}
	
	class EmailSender implements Runnable {
		
		private String eMailFormat = null;
		private String recipient = null;
		private int connectionTimout = 0;
		private int timeout = 0;
		private Object[] parameters = null;
		private String emailStatus = null;
		private Integer referenceKy = null;
		private String txnName = null;
		private String referenceVal = null;


		EmailSender (String eMailFormat, String recipient, int connectionTimout, int timeout, Object[] parameters) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
			this.eMailFormat = eMailFormat;
			this.recipient = recipient;
			this.parameters = parameters;
			
		}

		public void run() {
			Date requestTime = null;
			Date responseTime = null;
			String responceDesc = null;
			try {
				
				emailFormatBundle = ResourceBundle.getBundle("MBBEmailFormat");
				String formatClass = emailFormatBundle.getString("mbb.email."+ eMailFormat +".formatClass");
				String eMailSubject = emailFormatBundle.getString("mbb.email."+ eMailFormat +".subject");
				String eMailBody = emailFormatBundle.getString("mbb.email."+ eMailFormat +".message");
				
				Class mailFormatClass = Class.forName(formatClass);
				Constructor  mailFormatCons = mailFormatClass.getDeclaredConstructor(String.class,String.class);
				MBBEMailFormat mailFormat = (MBBEMailFormat) mailFormatCons.newInstance(eMailSubject, eMailBody);
				Message msg = mailFormat.prepaireMail(recipient, connectionTimout, timeout, parameters );
				requestTime = new Date();
				Transport.send(msg); 
				responseTime = new Date();
				emailStatus = STATUS_SUCSESS;
				
			} catch (Exception e) {
				_log.error("Exception dring sending message ", e.getMessage(), e);
				emailStatus = STATUS_EXCEPTION;
				responceDesc = e.getMessage();
			}finally{
				if(null== responseTime)	{
					responseTime = new Date();
				}
				MBBExtServiceLogUtil.storeServiceLog(SERVICENAME_EMAIL, eMailFormat, txnName, referenceKy , referenceVal, recipient, requestTime, responseTime, emailStatus, null, responceDesc);
			}
		
		}

		public void setReferenceKy(Integer referenceKy) {
			this.referenceKy = referenceKy;
		}

		public void setTxnName(String txnName) {
			this.txnName = txnName;
		}

		public void setReferenceVal(String referenceVal) {
			this.referenceVal = referenceVal;
		}

	}

}
