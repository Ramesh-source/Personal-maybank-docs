package com.corejava;

public class FibonacciExample1 {

	public static void main(String[] args) {

		
		int n=0,n1=1,n2=0,count=10;
	
		for(int i=0;i<count;i++) {
			
			if (i ==0 || i==1) {
				System.out.println(i+" ");
			}else {
				n2 = n+n1;				
				System.out.println(n2+" ");
				
				n=n1;
				n1=n2;
			}
		}
	}

}
