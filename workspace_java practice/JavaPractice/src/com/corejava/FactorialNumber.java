package com.corejava;

import java.util.stream.LongStream;

public class FactorialNumber {

	public static void main(String[] args) {

		
		int n=5;
		int fact=1;
		
		/*
		 * for(int i=1;i<=n;i++) { fact = fact*i; }
		 */
		long factorialStreams = factorialStreams(n);
		
		System.out.println("factorial value : "+factorialStreams);
	}

	
	public static long factorialStreams( long n )
	{
	    return LongStream.rangeClosed( 1, n )
	                     .reduce(1, ( long a, long b ) -> a * b);
	}
}
