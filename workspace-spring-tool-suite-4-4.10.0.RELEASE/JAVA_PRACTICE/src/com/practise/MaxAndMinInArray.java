package com.practise;

public class MaxAndMinInArray {

	public static void main(String[] args) {

		int a[] = {20,50,300,40,60,500};
		
		int max=a[0];
		
		for(int i=1;i < a.length;i++) {
			if(a[i] >max) {
				max=a[i];
			}
		}
		System.out.println("maximum value : "+max);
	}

}
