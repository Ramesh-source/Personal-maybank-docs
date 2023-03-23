package com.practise;

public class CountEvenAndOddDigits {

	public static void main(String[] args) {

		
		int number = 2345678;
		
		int even_count=0;
		int odd_count=0;
		
		while(number >0) {
			int rem = number%10;
			
			if(rem %2 == 0) {
                even_count++;
			}else {
				odd_count++; 
			}
			
			number = number/10;
			
		}
		
		System.out.println("Even Count: "+even_count+",  Odd Count :"+odd_count);
	}

}
