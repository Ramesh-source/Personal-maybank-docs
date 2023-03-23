package com.mbb.ilog.mail;
import java.io.IOException;
import java.text.MessageFormat;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;

import com.mbb.ilog.property.ILogCustomProperties;

/**
 * This class sends email to the sms gateway
 * @author J8583659
 *
 */
public class MailClient {
	
	private static final Logger logger = Logger.getLogger(MailClient.class);

	/**
	 * Sends email to the sms gateway
	 * @param args
	 * @throws IOException 
	 */
	public static void sendAlert(String host, String errorMsg) {
		
		ILogCustomProperties props = ILogCustomProperties.getInstance();
		
		String smsGatewayTo = props.getProperty("mail.sms.gateway.to");
		String smsGatewayFrom = props.getProperty("mail.sms.gateway.from");
		String to = props.getProperty("mail.recepient");
		String from = props.getProperty("mail.sender");
		
		try {
			logger.info("Sending mail to recepients " + to + ", sender " + from);
			//Trigger email alert to RBS_Group
			sendMail(host, errorMsg, from, to);
			logger.info("Mail alert sent successfully....");
		} catch (MessagingException mex) {
			logger.error("Failed to send email alert : ", mex);
		}
		
		try {
			logger.info("Sending sms alert to recepients " + smsGatewayTo + ", sender " + smsGatewayFrom);
			//Trigger sms alert
			sendMail(host, errorMsg, smsGatewayFrom, smsGatewayTo);
			logger.info("SMS alert sent successfully....");
		} catch (MessagingException mex) {
			logger.error("Failed to send sms alert : ", mex);
		}
	}
	
	private static void sendMail(String host, String errorMsg, String from, String to) throws MessagingException {
		// Get the session object
		ILogCustomProperties props = ILogCustomProperties.getInstance();
		Session session = Session.getDefaultInstance(props.getProperties());
		
		// compose the message
		MimeMessage message = new MimeMessage(session);
		message.setFrom(new InternetAddress(from));
		message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		message.setSubject(MessageFormat.format(props.getProperty("mail.subject"), host));

		// Send message
		Transport.send(message);
	}
}
