package com.practise;

public class CompoundIntrest {

	public static void main(String[] args) {

		int p=10;
		int q=20;
		int r =30;
		double a = p*Math.pow((1 + (q/100.0)),r);
		double ci=  a-p;
		System.out.printf("%.2f",ci);
		
	}

}
