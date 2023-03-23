package com.mbb.email.format;

import java.io.IOException;
import java.text.MessageFormat;
import java.util.Date;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

import com.s1.fst.util.Log;

public class MBBMIASMailFormat extends AbstractMBBEMailFormat{
	
	private static final Log _log = new Log(MBBMIASMailFormat.class,4, "com.mbb.email.fromat");
	
	public MBBMIASMailFormat(String eMailSubject, String eMailBody) {
		super(eMailSubject,eMailBody);
	}

	public MimeMessage prepaireMail(String recipient, int connectionTimout, int timeout, Object[] parameters) throws MessagingException, IOException {
		MimeMessage msg = new MimeMessage(getSession(connectionTimout, timeout));
		if(null != parameters){

			msg.setFrom(new InternetAddress(defaultSender,defaultSenderName));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
		
			String subject = MessageFormat.format(getEMailSublect(), parameters );

			msg.setSubject(subject, "UTF-8");
			msg.setSentDate(new Date());
			Multipart multipart = new MimeMultipart();	
			
			String content = MessageFormat.format(getEMailBody(), parameters );


			MimeBodyPart messagePart = new MimeBodyPart();
			messagePart.setContent(content, "text/html; charset=UTF-8");
			multipart.addBodyPart(messagePart);
		
			msg.setContent(multipart);
			msg.saveChanges();
		}

		return msg;
	}

}
