package com.mbb.email.format;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;

import org.grnds.facility.config.GrndsConfiguration;
import org.grnds.facility.config.GrndsConfigurationEnvironment;

import com.s1.fst.util.Log;

public abstract class AbstractMBBEMailFormat implements MBBEMailFormat {

	static String smtpHost = "";
	static String smtpPort = "";
	static String smtpConnectTimeout = "";
	static String smtpTimeout = "";
	static String defaultSender = "";
	static String defaultSenderName = "";
    
    private String eMailSubject = null;
    private String eMailBody = null;
    
    private static final Log _log = new Log(AbstractMBBEMailFormat.class,4, "com.mbb.email.fromat");
    
    public AbstractMBBEMailFormat(String eMailSubject, String eMailBody) {
		super();
		this.eMailSubject = eMailSubject;
		this.eMailBody = eMailBody;
	}

	static
	{
		GrndsConfiguration config = GrndsConfiguration.getInstance();			
		GrndsConfigurationEnvironment env = config.getEnvironment("ep");
		smtpHost = env.getProperty("mbb.mail.smtpHost");
		smtpPort = env.getProperty("mbb.mail.smtpPort");
		defaultSender = env.getProperty("mbb.mail.defaultSender");
		defaultSenderName = env.getProperty("mbb.mail.defaultSenderName");
	}
	
	public Session getSession(int smtpConnectTimeout, int smtpTimeout){
		Properties props = new Properties();
		props.put("mail.smtp.host", smtpHost);
		props.put("mail.smtp.port", smtpPort);
		props.put("mail.smtp.connectiontimeout", smtpConnectTimeout);
		props.put("mail.smtp.timeout", smtpTimeout);
		_log.debug("Create Session[host : " +  smtpHost + " port : " +  smtpPort  + " connectiontimeout : " + smtpConnectTimeout + " timeout : " +  smtpTimeout + "]" );
		return Session.getInstance(props);
	}
	
	public String getSender(){
		return defaultSender;
	}
	
	public String getSenderName(){
		return defaultSenderName;
	}
	public String getEMailSublect(){
		return eMailSubject;
	}
	public String getEMailBody(){
		return eMailBody;
	}

}
