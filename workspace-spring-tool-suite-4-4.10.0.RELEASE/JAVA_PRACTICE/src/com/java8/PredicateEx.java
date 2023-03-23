package com.java8;

import java.util.function.Predicate;

public class PredicateEx {

	public static void main(String[] args) {
	/*
	 * Predicate is a function interface to have one Test abstract method
	 * use for check the boolean condition
	 */
		
		Predicate<String> checkLength = s -> s.length() >= 14;
		System.out.println(" the length of the string "+ checkLength.test("Predicate Example"));
		
		Predicate<String> checkEventLength = s -> s.length() %2 == 0;
		System.out.println(" the length of the string even checking "+ checkEventLength.test("Predicate Example"));
		
		// Joining by using and (or) or
		
		System.out.println(" the length of the string and "+ checkLength.and(checkEventLength).test("Predicate Example"));
		
		System.out.println(" the length of the string or "+ checkLength.or(checkEventLength).test("Predicate Example"));
	}

}
