package com.mbb.ilog.client;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

import org.apache.http.HttpStatus;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;

import com.mbb.ilog.property.ILogCustomProperties;

/**
 * This class communicates with the ilog server 
 * @author J8583659
 *
 */
public class ILogClient {
	
	private static final Logger logger = Logger.getLogger(ILogClient.class);
	
	private static ILogClient iLogClient;
	
	private ILogCustomProperties iLogProperties;
	
	private ILogClient() {
		iLogProperties = ILogCustomProperties.getInstance();
	}
	
	public static ILogClient getInstance() {
		if(iLogClient == null) {
			iLogClient = new ILogClient();
		}
		return iLogClient;
	}
	
	/**
	 * Sends a dummy request to ilog server
	 * @throws Exception - when received failure response from ilog
	 */
	public void sendRequest(String endpointURI) throws Exception {
		
		String payload = iLogProperties.getProperty("ilog.request.sample");
				
		CloseableHttpClient client = HttpClients.createDefault();
		
		logger.info("ILog Endpoint URL : " + endpointURI);
		logger.info("Request XML : " + payload);

		try {
			HttpPost httpPost = new HttpPost(endpointURI);
			httpPost.setEntity(new StringEntity(payload));
			CloseableHttpResponse response = client.execute(httpPost);
			
			String result = EntityUtils.toString(response.getEntity());
			logger.info("Response : " + result);
			try {
				if (response.getStatusLine().getStatusCode() != HttpStatus.SC_OK) {
					String errorMsg = "ILog returned with failure status code " + response.getStatusLine().getStatusCode();
					logger.error(errorMsg);
					throw new Exception(errorMsg);
				}
			} finally {
				if (response != null) {
					response.close();
				}
			}
		} finally {
			client.close();
		}
	}
	
	/**
	 * Creates a socket connection with ilog server
	 * @return
	 * @throws UnknownHostException
	 * @throws IOException
	 */
	public void pingILog(String host, int port) throws UnknownHostException, IOException {
		Socket s = null;
		logger.info("Pinging host " + host + ":" + port);
		try {
			s = new Socket(host, port);
		} finally {
			if (s != null) {
				s.close();
			}
		}
	}

}
