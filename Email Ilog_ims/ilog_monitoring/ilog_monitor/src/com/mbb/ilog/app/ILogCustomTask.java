package com.mbb.ilog.app;
import java.util.TimerTask;

import org.apache.log4j.Logger;

import com.mbb.ilog.client.ILogClient;
import com.mbb.ilog.mail.MailClient;
import com.mbb.ilog.property.ILogCustomProperties;

public class ILogCustomTask extends TimerTask {
	
	private static final Logger logger = Logger.getLogger(ILogCustomTask.class);
	
	private String protocol;
	private String host;
	private int port;
	private String server1Protocol;
	private String server1Host;
	private int server1Port;
	private String server2Protocol;
	private String server2Host;
	private int server2Port;
	private String serviceURL;
	private ILogClient iLogClient;
	
	public ILogCustomTask() {
		ILogCustomProperties props = ILogCustomProperties.getInstance();
		
		protocol = props.getProperty("ilog.protocol");
		host = props.getProperty("ilog.host");
		port = props.getIntProperty("ilog.port");
		
		server1Protocol = props.getProperty("ilog.server1.protocol");
		server1Host = props.getProperty("ilog.server1.host");
		server1Port = props.getIntProperty("ilog.server1.port");
		
		server2Protocol = props.getProperty("ilog.server2.protocol");
		server2Host = props.getProperty("ilog.server2.host");
		server2Port = props.getIntProperty("ilog.server2.port");
		
		serviceURL = props.getProperty("ilog.service.url");		
		iLogClient = ILogClient.getInstance();
	}
	
	@Override
	public void run() {
		monitorILogServer(protocol, host, port);
		monitorILogServer(server1Protocol, server1Host, server1Port);
		monitorILogServer(server2Protocol, server2Host, server2Port);
	}
	
	private void monitorILogServer(String protocol, String host, int port) {
		
		// First check if a connection can be established with ilog server
		try {
			logger.info("Sending ping to iLog server");
			iLogClient.pingILog(host, port);
			logger.info("Ping successful");
		} catch (Exception ex) {
			logger.error("ILog server ping failed : " + ex);
			// Trigger SMS gateway by sending email
			MailClient.sendAlert(host, ex.getMessage());
			return;
		}

		// Check if ilog server returns success response for a dummy request
		String endpointURI = protocol + "://" + host + ":" + port + "/" + serviceURL;
		try {
			logger.info("Sending dummy request to iLog");
			iLogClient.sendRequest(endpointURI);
			logger.info("Received response for dummy request");
		} catch (Exception e) {
			logger.error("ILog service failed : " + e);
			// Trigger SMS gateway by sending email
			MailClient.sendAlert(host, e.getMessage());
		}
	}
	
}