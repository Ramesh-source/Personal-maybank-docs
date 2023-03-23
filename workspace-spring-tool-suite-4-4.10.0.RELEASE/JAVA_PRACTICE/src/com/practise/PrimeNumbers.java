package com.practise;

public class PrimeNumbers {

	public static void main(String[] args) {

		// prime number means a number has a 2 factors, 1 and itself
		int num =10;
		int count=0;
		
		if(num > 1) {
			
			for(int i=2; i<num;i++) {
				
				if(num%i ==0) {
					count++;
				}
			}
			if(count > 2) {
				System.out.println(num+" is prime number");
			}else {
				System.out.println(num+" is not a prime number");
			}
			
		}else {
			System.out.println(num+" is a Prime Number");
		}
	}

}
