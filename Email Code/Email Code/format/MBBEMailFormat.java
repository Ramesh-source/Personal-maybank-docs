package com.mbb.email.format;

import java.io.IOException;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;

public interface MBBEMailFormat {
	
	Session getSession(int smtpConnectTimeout, int smtpTimeout);
	
	String getSender();
	
	String getSenderName();
	
	String getEMailSublect();
	
	String getEMailBody();
	
	public MimeMessage prepaireMail(String recipient, int connectionTimout, int timeout, Object[] paramMap) throws MessagingException, IOException;
	
}
