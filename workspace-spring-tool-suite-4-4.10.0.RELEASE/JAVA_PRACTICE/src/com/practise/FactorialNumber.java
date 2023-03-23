package com.practise;

public class FactorialNumber {

	public static void main(String[] args) {

		int number=3;
		long factorial=1;
		
		for(int i=1;i<=number;i++) {
			//factorial = factorial * i;
		}
		System.out.println("Asc Factorial value : "+factorial);
		
		for(int i=number;i>=1;i--) {
			factorial = factorial * i;
		}
		System.out.println("Desc Factorial value : "+factorial);
	}

}
