 package com.java8;

import java.util.function.Function;

public class FunctionalEx {

	public static void main(String[] args) {

		Function<Integer, Integer> squarMe = i -> i*i;
		System.out.println("Function Interface : "+squarMe.apply(5));
	}

}
