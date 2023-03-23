package com.practise;

import java.util.Scanner;

public class LargestOf3Numbers {

	public static void main(String[] args) {

		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter a first Number :");
		int a = sc.nextInt();
		
		System.out.println("Enter a second Number :");
		int b = sc.nextInt();
		
		System.out.println("Enter a third Number :");
		int c = sc.nextInt();
		
		if(a>b && a>c) {
			System.out.println(a+" is a largest number");
		}else if(b>a && b>c) {
			System.out.println(b+" is a largest number");
		}else {
			System.out.println(c+ " is a largest number");
		}
		int largest = c>(a>b?a:b)?c:(a>b?a:b);
		
		System.out.println(" Prinint the largest number :"+largest);
	}

}
