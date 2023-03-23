package com.java8;

import java.math.BigDecimal;
import org.apache.commons.lang3.StringUtils;

public class JMSUtil {

	public static void main(String[] args) {
		
		System.out.println("StringtoDecimal"+JMSUtil.formatStringToDecimal("200"));
		System.out.println("DecimalToString"+JMSUtil.formatDecimalToString(new BigDecimal(246)));
		
		String branchCode = String.format("%4d", Integer.parseInt("232"));
		System.out.println("Branch Code:"+branchCode);
		
	}
	
	public static BigDecimal formatStringToDecimal(String value) {
		if(StringUtils.isBlank(value)) {
			return null;
		}
		if(value.length() < 3) {
			value = String.format("%03d", Long.parseLong(value)); 
			System.out.println(value);
		}
		StringBuilder str = new StringBuilder(value);
		str.insert(value.length() - 2, ".");
		return new BigDecimal(str.toString());
	}
	
	
	
	public static String formatDecimalToString(BigDecimal value) {
		if(value == null) {
			return "";
		}
		value = value.setScale(2, BigDecimal.ROUND_HALF_UP);
		return value.multiply(BigDecimal.valueOf(100)).setScale(0).toString();
	}

}
