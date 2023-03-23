package com.practise;

public class Swipe2Numbers {

	public static void main(String[] args) {

		int i=10;
		int j=20;
		
		System.out.println("before swipe values .. "+i+" - "+j);
		//logic1
		/*int temp = i;
		i=j;
		j=temp; */
		
		// logic2 using bitwise xor(^)
		
		/*i= i^j;
		j= i^j;
		i=i^j;
		*/
		
		//logic 3  using + and -
		
		i = i+j; //i =30
		j = i-j; // 
		i= i-j;
		
		
		System.out.println("after swipe values .. "+i+" : "+j);
	}
	
	

}
