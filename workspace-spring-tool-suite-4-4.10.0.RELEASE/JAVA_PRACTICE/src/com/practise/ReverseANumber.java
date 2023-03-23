package com.practise;

import java.util.Scanner;

public class ReverseANumber {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("Enter a number");
		
		int number = sc.nextInt();
		System.out.println("Prining entered number : "+number);
		
		
		int rev =0;
		
		while(number !=0) {
			
			rev = rev * 10 + number %10;
			number =number/10;
			
		}
		
		System.out.println("Reverse Number : "+rev);
	}

}
