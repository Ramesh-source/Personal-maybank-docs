package com.palindrom;

public class Palindrom {

	
	
	public static void main(String args[]) {
		String original ="MOMOMOM";
	    System.out.println("Original Value : "+original);
	    String reverse ="";
	    
	    for(int i= original.length() - 1;i>=0;i--) {
	    	reverse += original.charAt(i);
	    	System.out.println("rerverse "+reverse);
	    }
	    
	    boolean palindrom =true;
	    
	    for (int i=0;i<original.length();i++) {
	    	if(reverse.charAt(i) != original.charAt(i)) {
	    		palindrom =false;
	    	}
	    }
	    if(palindrom) {
	    	System.out.println("PALINDROM !");
	    }else {
	    	System.out.println("Not a palindrom !");
	    }
	    
	    // SCENARIO 2
	    StringBuffer reverse1 = new StringBuffer(original);
	     String reverse2 = reverse1.reverse().toString();
	     
	     if(original.equals(reverse2)) {
	    	 System.out.println("PALINDROM1111 !");
	     }else {
	    	 System.out.println("NOT A PALIDROM");
	     }
	     
	    
	}
}
