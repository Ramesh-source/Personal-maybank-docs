package com.practise;

import java.util.Scanner;

public class AddTwoNumbers{

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter a first Number :");
int a1= sc.nextInt();
System.out.println("Enter a second Number :");
int a2= sc.nextInt();
int sum = a1 + a2;
System.out.println("Sum of two numbers : "+sum);
}
}
