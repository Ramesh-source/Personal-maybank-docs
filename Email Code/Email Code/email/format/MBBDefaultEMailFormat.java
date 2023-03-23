package com.mbb.email.format;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.MessageFormat;
import java.util.Date;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;

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


import com.s1.fst.util.Log;

public final class MBBDefaultEMailFormat extends AbstractMBBEMailFormat{
	
	public static final String MAIL_FROMAT_NAME = "defaulFormat";
	public static final String ATACHMENT_DATA= "ATACHMENT_DATA";
	public static final String ATACHMENT_TYPE= "ATACHMENT_TYPE";
	public static final String ATACHMENT_NAME= "ATACHMENT_NAME";
	
	private static final Log _log = new Log(MBBDefaultEMailFormat.class,4, "com.mbb.email.fromat");

	public MBBDefaultEMailFormat(String eMailSubject, String eMailBody) {
		super(eMailSubject,eMailBody);
	}

	public MimeMessage prepaireMail(String recipient, int connectionTimout, int timeout, Object[] parameters) throws MessagingException, IOException{

		MimeMessage msg = new MimeMessage(getSession(connectionTimout, timeout));
		msg.setFrom(new InternetAddress(defaultSender, defaultSenderName));
		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
		
		String subject = MessageFormat.format(getEMailSublect(), parameters );
		msg.setSubject(subject, "UTF-8");
		msg.setSentDate(new Date());
		
		String message = MessageFormat.format(getEMailBody(), parameters );
		Multipart multipart = new MimeMultipart();
		MimeBodyPart messagePart = new MimeBodyPart();
		messagePart.setContent(message, "text/html; charset=UTF-8");
		multipart.addBodyPart(messagePart);
		
		if(null != parameters && parameters.length >= 3){
			byte[] attchmentData = (byte[])parameters[0];
			String attchmentType = (String)parameters[1];
			String attchmentName = (String)parameters[2];
		

			if(null != attchmentData && null != attchmentType && null != attchmentName){
				MimeBodyPart attchementPart = new MimeBodyPart();
				DataSource source = new ByteArrayDataSource(attchmentData, attchmentType);
				attchementPart.setDataHandler(new DataHandler(source));
				attchementPart.setFileName(attchmentName);
				multipart.addBodyPart(attchementPart);
			}
		}
		msg.setContent(multipart);
		msg.saveChanges();
		
		return msg;
	}

}
