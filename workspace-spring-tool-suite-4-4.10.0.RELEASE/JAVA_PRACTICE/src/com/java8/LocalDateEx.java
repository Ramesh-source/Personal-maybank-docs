package com.java8;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class LocalDateEx {

	public static void main(String[] args) {
		//Local date
		LocalDate date = LocalDate.now();
		System.out.println(date);
		
		LocalDate yesterday = date.minusDays(13);
		System.out.println(yesterday);
		
		LocalDate tommarow = date.plusDays(13);
		System.out.println(tommarow);
		
		LocalDate nextMonth = date.plusMonths(1);
		System.out.println(nextMonth);
		
		// to check the leapYear
		LocalDate date1 = LocalDate.of(2016, 1, 13);  
		LocalDate date2 = LocalDate.now(); 
	    System.out.println(date1.isLeapYear());  // true
	    System.out.println(date2.isLeapYear());  // false
	    
	    // localdatetime
	    
	    LocalDateTime datetime =   LocalDateTime.now();
	    System.out.println("datetime : "+datetime); //2021-06-11T16:49:21.053808900
	    
	    
	    //set time and year
	    LocalDate date3 = LocalDate.of(2017, 1, 13);  
	    LocalDateTime datetime1 = date3.atTime(1,50,9);      
	    System.out.println(datetime1);    //2017-01-13T01:50:09
	    
	    
	    //localtime
	    
	    LocalTime time1 = LocalTime.of(10,43,12);  
	    System.out.println(time1);  
	    LocalTime time2=time1.plusHours(4);  
	    LocalTime time3=time2.plusMinutes(18);  
	    System.out.println(time3);  
	    
	     LocalTime timeNow = LocalTime.now(); 
	     System.out.println(timeNow);
	     
	     
	     
	     // date time formate
			/*
			 * LocalDate date10 = LocalDate.now(); DateTimeFormatter formatters =
			 * DateTimeFormatter.ofPattern("dd/MM/YYYY"); String text =
			 * date10.format(formatters); LocalDate parsedDate = LocalDate.parse(text,
			 * formatters); System.out.println("parsedDate "+ parsedDate);
			 */
	     
	     LocalDate today = LocalDate.now();
         
	     String formattedDate = today.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.LONG));
	     System.out.println("LONG format: " + formattedDate);
	     
	     formattedDate = today.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.MEDIUM));
	     System.out.println("MEDIUM format: " + formattedDate);
	     
	     formattedDate = today.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.SHORT));
	     System.out.println("SHORT format: " + formattedDate);
	     
	     formattedDate = today.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.FULL));
	     System.out.println("FULL format: " + formattedDate);
	     
	     
	     // user defined format
	     
	     LocalDate today17 = LocalDate.now();
	     
	     String formattedDate1 = today.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
	      
	     System.out.println("user defined format :"+formattedDate1);

				
	     //Zone timings
	     
	     ZoneId zone1 = ZoneId.of("Asia/Kolkata");  
	     ZoneId zone2 = ZoneId.of("Asia/Tokyo");  
	     LocalTime time4 = LocalTime.now(zone1);  
	     System.out.println("India Time Zone: "+time4);  
	     LocalTime time5 = LocalTime.now(zone2);  
	     System.out.println("Japan Time Zone: "+time5);  
	     LocalTime paris = LocalTime.now(ZoneId.of("Europe/Paris"));
	     System.out.println(" paris time "+paris);
	     
	     Locale loc = new Locale("","MY");
	     System.out.println(loc.getDisplayCountry());
	     
	     
	     
	     Map<String, String> countries = new HashMap<>();
	     for (String iso : Locale.getISOCountries()) {
	       Locale l = new Locale("", iso);
	       countries.put(l.getDisplayCountry(), iso);
	      // System.out.println(" ISO OF COUNTRIES : "+l.getDisplayCountry()+ " - "+iso);
	     }

	     System.out.println(countries.get("Switzerland"));
	     System.out.println(countries.get("Andorra"));
	     System.out.println(countries.get("Japan"));
	     
	     
	}

}
