package com.practise;

import java.util.Locale;

public class SwapNumbers{

public static void main(String args[]){

	/*
	 * Scanner sc = new Scanner(System.in);
	 * System.out.println("Enter a first Number :"); int a1= sc.nextInt();
	 * System.out.println("Enter a second Number :"); int a2= sc.nextInt();
	 */
int a1=10;
int a2 = 20;
System.out.printf("Enterd 2 numbers : %d, %d \n", a1,a2);
 a1 = a1+a2;
 a2=a1-a2; 
 a1=a1-a2;

/*
 * System.out.printf("swap two numbers  : "+a1,a2); System.out.printf("'%s' %n",
 * "baeldung"); System.out.printf("'%15s' %n", "baeldung");
 * System.out.printf("%C%n", 's'); System.out.printf("simple integer: %d%n",
 * 10000L);
 * 
 * System.out.printf(Locale.US, "%,d %n", 10000);
 * System.out.printf(Locale.ITALY, "%,d %n", 10000);
 */

System.out.printf("swap 2 numbers : %d, %d \n", a1,a2);
}
}
