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

public class MBBBPCTransSummaryEmailFormat extends AbstractMBBEMailFormat{
	
	public MBBBPCTransSummaryEmailFormat(String eMailSubject, String eMailBody) {
		super(eMailSubject,eMailBody);
	}
	
	public MimeMessage prepaireMail(String recipient, int connectionTimout, int timeout, Object[] parameters) throws MessagingException, IOException {
		
		MimeMessage msg = new MimeMessage(getSession(connectionTimout, timeout));
		if(null != parameters && parameters.length >= 4){

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
		
			
			String attachmentName = (String)parameters[0];
			String attachmentType = (String)parameters[1];
			byte[] workbook = (byte[])parameters[2];

			if(null != workbook && null != attachmentType && null != attachmentName){
				MimeBodyPart attchementPart = new MimeBodyPart();
				DataSource source = new ByteArrayDataSource(workbook, attachmentType);
				attchementPart.setDataHandler(new DataHandler(source));
				attchementPart.setFileName(attachmentName);
				multipart.addBodyPart(attchementPart);
			}
			

			msg.setContent(multipart);
			msg.saveChanges();
		}

		return msg;
	}
}
