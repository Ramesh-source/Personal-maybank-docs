package com.java8;

import java.time.LocalDate;
import java.util.Date;
import java.util.function.Supplier;

public class SupplierEx {

	public static void main(String[] args) {
		// Consumer is predefined functional Interface
		// it contains get method
		
		Supplier<Date> currentDate = () -> new Date();
		System.out.println(currentDate.get());
		
		

	}

}
