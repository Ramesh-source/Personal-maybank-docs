package com.mbb.ilog.app;

import java.util.Timer;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;

import com.mbb.ilog.property.ILogCustomProperties;

/**
 * This app will monitor ilog for the given time interval. 
 * If ilog is down, will trigger the email gateway.
 * @author J8583659
 *
 */
public class ILogMonitoringApp {

	private static final Logger logger = Logger .getLogger(ILogMonitoringApp.class);

	public static void main(String args[]) {

		ILogCustomProperties props = ILogCustomProperties.getInstance();
		int intervalInMinutes = props.getIntProperty("ilog.interval");

		logger.info("Inside initializer - Starting iLog monitoring with interval " + intervalInMinutes + " minutes");

		Timer timer = new Timer();
		
		ILogCustomTask customTask = new ILogCustomTask();

		// Start running the task for specified interval
		timer.schedule(customTask, 0, TimeUnit.MINUTES.toMillis(intervalInMinutes));
	}

}
