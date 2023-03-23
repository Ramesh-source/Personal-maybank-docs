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

public class MBBBPCEMailFormat extends AbstractMBBEMailFormat{
	
	private static final Log _log = new Log(MBBBPCEMailFormat.class,4, "com.mbb.email.fromat");
	
	public MBBBPCEMailFormat(String eMailSubject, String eMailBody) {
		super(eMailSubject,eMailBody);
	}

	public MimeMessage prepaireMail(String recipient, int connectionTimout, int timeout, Object[] parameters) throws MessagingException, IOException {

		
		MimeMessage msg = new MimeMessage(getSession(connectionTimout, timeout));
		if(null != parameters && parameters.length >= 5){

			msg.setFrom(new InternetAddress(defaultSender,defaultSenderName));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
		
			String subject = MessageFormat.format(getEMailSublect(), parameters );

			msg.setSubject(subject, "UTF-8");
			msg.setSentDate(new Date());
			Multipart multipart = new MimeMultipart();	
			String content = getEMailBody();
			
			MimeBodyPart messagePart = new MimeBodyPart();
			messagePart.setContent(content, "text/html; charset=UTF-8");
			multipart.addBodyPart(messagePart);
		
			
			String attchmentName = (String)parameters[0];
			String attchmentType = (String)parameters[1];
			byte[] attchmentData = (byte[])parameters[2];

			if(null != attchmentData && null != attchmentType && null != attchmentName){
				MimeBodyPart attchementPart = new MimeBodyPart();
				DataSource source = new ByteArrayDataSource(attchmentData, attchmentType);
				attchementPart.setDataHandler(new DataHandler(source));
				attchementPart.setFileName(attchmentName);
				multipart.addBodyPart(attchementPart);
			}
			

			msg.setContent(multipart);
			msg.saveChanges();
		}

		return msg;
	}

}
