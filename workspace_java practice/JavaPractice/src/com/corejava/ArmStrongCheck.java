package com.corejava;

public class ArmStrongCheck {

	public static void main(String[] args) {
		
		int n=0,a=0,sum=0,temp=0,temp1=0;
		temp =n;
		temp1 =n;
		int digits=0;
		
		while(temp1 > 0) {
			temp1=temp1 / 10;
			digits++;
		}
		
		while(n > 0) {
			a=n % 10;
			sum =(int) (sum + (Math.pow(a, digits)));
			n = n/10;
		}
		
		
		if(sum ==temp) {
			System.out.println(temp+" is armstrong number");
		} else {
			System.out.println(temp+" is not armstrong number"); 
		}

	}

}
