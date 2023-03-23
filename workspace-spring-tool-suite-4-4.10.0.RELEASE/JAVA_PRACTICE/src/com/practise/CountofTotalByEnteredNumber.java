package com.practise;

public class CountofTotalByEnteredNumber {

	public static void main(String[] args) {

		int num = 567890;
		
		int total =0;
		
		while(num >0) {
			total += num%10;
			num =num/10;
		}
		System.out.println("Total count :"+total);
	}

}
