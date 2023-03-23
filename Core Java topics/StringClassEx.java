package com.core;

import java.util.List;
import java.util.*;

public class StringClassEx {
public static void main(String args[]){
System.out.println("Print String creation");
/*
 * String is a sequence of characters, for e.g. “Hello” is a string of 5 characters. In java, 
 * string is an immutable object which means it is constant and can cannot be changed once it has been created.
 */
//String literal
String str ="Java beginner";
char ch[] ={'r','a','j','u'};
String st1 = new String(ch);

//Using new keyword
String stt2 = new String("Welcome to strings");

System.out.println(str+" ---- "+st1+" ---- "+stt2);

String i1 ="Welcome";
String i2="Welcome";

System.out.println(i1==i2);
System.out.println(i1.equals(i2));


String i3= new String("Welcome");
String i4 = new String("Welcome");
System.out.println(i3==i4);
System.out.println(i3.equals(i4));

// String immutable

String i5="Helloo";
i5.toUpperCase();
System.out.println(i5);
System.out.println(i5.toUpperCase());


//String buffer - mutable

StringBuffer sb = new StringBuffer("Helooo");
//sb.append("Welcome");
System.out.println(sb.toString());


//split concept

String stsplit = new String("13/11/2019");
System.out.println(stsplit);

//String strplit[] = stsplit.split("/");
String strplit[]= stsplit.split("/", 2);
for(String strmainsplit: strplit){
	System.out.println(strmainsplit);
}

//This is out input String
	String s = new String("bbaaccaa");

	//Splitting with limit as 0
	String arr2[]= s.split("a", 0);
	System.out.println("Zero Limit split:");
	for (String str2: arr2){
	   System.out.println(str2);
	}
	
	// String length
	
	String str1= new String("Test String");
    String str2= new String("Chaitanya");
    String str3= new String("BeginnersBook");
    System.out.println("Length of str1:"+str1.length());
    System.out.println("Length of str2:"+str2.length());
    System.out.println("Length of str3:"+str3.length());
	
    
    // string trim
    
    String str4 = new String("    How are you??   ");
	System.out.println("String before trim: "+str4);
	System.out.println("String after trim: "+str4.trim());
	
	//String hashcode
	
	String str5 = new String("Welcome!!");
	System.out.println("Hash Code of the String str5: "+str5.hashCode());
	
	
	// empty string
	
	String str6="";
	String str7="Wecl";
	System.out.println("Strimg str6 empty " + str6.isEmpty());
	System.out.println("Strimg str7 empty " + str7.isEmpty());
			
	// Intern
	String str8 = "beginnersbook";    
	
	/* The Java String intern() method searches the string "beginnersbook"  
	 * in the memory pool and returns the reference of it.
	 */
	String str9 = new String("beginnersbook").intern(); 
	//prints true 
	System.out.println("str1==str2: "+(str8==str9));
	
	
	// left padding
	
	int str10 = 88;
	/* Left padding an integer number with 0's and converting it
	 * into a String using Java String format() method.
	 */
	String formattedString = String.format("%05d", str10);
	System.out.println(formattedString);
	
	// Copy value of
	
	 char[] data = {'a','b','c','d','e','f','g','h','i','j','k'};
     String str11 = "Text";
     String str12 = "String";
     //Variation 1:String copyValueOf(char[] data)
     str11 = str11.copyValueOf(data);
     System.out.println("str1 after copy: " + str11);

     //Variation 2:String copyValueOf(char[] data,int offset,int count)
     str12 = str12.copyValueOf(data, 5, 3 );
     System.out.println("str2 after copy: " + str12);
     
     
    // boolean equals(String str): Case sensitive comparison
    // boolean equalsIgnoreCase(String str): Case in-sensitive comparison
	
     
     // starts with
     
     String str13= new String("quick brown fox jumps over the lazy dog");
     System.out.println("String str starts with quick: "+str13.startsWith("quick"));
     System.out.println("String str starts with brown: "+str13.startsWith("brown"));
     System.out.println("substring of str(starting from 6th index) has brown prefix: "+str13.startsWith("brown", 6));
     System.out.println("substring of str(starting from 6th index) has quick prefix: "+str13.startsWith("quick", 6));
     
     
     //contains
    // String str14 = "Game of Thrones";  
   //This will print "true" because "Game" is present in the given String
   //System.out.println(str14.contains("Game"));
     
     
     //charAt
     String str15 = "Welcome to string handling tutorial";
 	//This will return the first char of the string
 	char ch1 = str15.charAt(0);
 	System.out.println(ch1);
 	
 	
 	//compareTo
 	//Java String compareTo() method case sensitive
 	String str16 = "String method tutorial";
    String str17 = "compareTo method example";
    String str18 = "String method tutorial";
    String str19 = new String("String method tutorial");
    String str20 = new String("String method tutorial");
    int var1 = str16.compareTo( str17);
    int var2 = str16.compareTo( str18);
    int var3 = str19.compareTo( str20);
    System.out.println("str16 & str17 comparison: "+var1);
    System.out.println("str16 & str18 comparison: "+var2);
    
    System.out.println("str19 & str20 comparison: "+var3);
}
}
