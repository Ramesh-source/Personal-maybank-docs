package com.corejava;



	import java.util.Scanner;
	import java.util.regex.Matcher;
	import java.util.regex.Pattern;
	public class ReplaceMoreSpacesintoSingleSpace {
	   public static void main(String args[]) {
	      //Reading String from user
	      System.out.println("Enter a String");
	      Scanner sc = new Scanner(System.in);
	      String input = sc.nextLine();
	      String regex = "\s+";
	      //Compiling the regular expression
	      Pattern pattern = Pattern.compile(regex);
	      //Retrieving the matcher object
	      Matcher matcher = pattern.matcher(input);
	      //Replacing all space characters with single space
	      String result = matcher.replaceAll(" ");
	      System.out.print("Text after removing unwanted spaces: \n"+result);
	   }
	}
