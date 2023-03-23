package com.practise;

public class HashCode {

 public static void main(String[] args) {
	Human ramesh = new Human(1001,"Ramesh");
	System.out.println(ramesh.hashCode());
	Human sushil = new Human(1001,"Ramesh");
	System.out.println(sushil.hashCode());
	
	Human akhil = sushil;
	boolean result = ramesh.equals(sushil);
	System.out.println(result);
	
	HashCode hc = new HashCode();
	
	boolean result1 = ramesh.equals(hc);
	System.out.println(result1);
	
	
	String str = new String("Ramesh");
	String str1= new String("Ramesh");
	System.out.println(str.equals(str1));
	
	
	String str3="Ramesh";
	String str4="Ramesh";
	System.out.println("equals method : "+str.equals(str1));
	System.out.println("equals method : "+str3.equals(str4));
	
	if(str3 == str4) { // true -- checking the reference value - str1 and str referencing same value
		System.out.println("str3 equals to str4 : ");
	}
	if(str == str1) { //false // == checking the reference value - str1 and str referencing not same value
		System.out.println("  str1 equals to str : ");
	}
	
	if(akhil == sushil) { // true
		System.out.println("  akhil object equals to sushil object : ");
	}
	if(ramesh == akhil) { // false
		System.out.println("  akhil object equals to ramesh object : ");
	}
	
	
	// == compare reference(identity)
	// equals compare the content of object.
	// in String - equals method overide in string class.
	// Object user need to write explicitly overide equals method to compare the content
	// hash code generate uniqe number for each object.
	
	
}
}
