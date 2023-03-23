package com.mbb.ilog.property;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import org.apache.log4j.Logger;

/**
 * Custom properties class for ilog monitoring
 * @author J8583659
 *
 */
public class ILogCustomProperties {

	private static ILogCustomProperties iLogProperties;

	private static final Logger logger = Logger.getLogger(ILogCustomProperties.class);

	private Properties props;

	private ILogCustomProperties() {
		try {
			props = new Properties();
			props.load(new FileInputStream("./ilog_monitor.properties"));
		} catch (IOException e) {
			logger.error("Error reading properties :", e);
			throw new RuntimeException("Cannot read properties file : ", e);
		}
	}

	public static ILogCustomProperties getInstance() {
		if (iLogProperties == null) {
			iLogProperties = new ILogCustomProperties();
		}
		return iLogProperties;
	}

	public String getProperty(String propertyName) {
		return props.getProperty(propertyName);
	}

	public int getIntProperty(String propertyName) {
		return Integer.parseInt(props.getProperty(propertyName));
	}

	public Properties getProperties() {
		return props;
	}

}
