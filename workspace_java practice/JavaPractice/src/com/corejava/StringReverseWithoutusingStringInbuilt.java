/**
 * 
 */
package com.corejava;

/**
 * @author 00134670
 *
 */
public class StringReverseWithoutusingStringInbuilt {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		
		System.out.println("String Reverse Program");
		
		String str = "Ramesh Raju Sangaraju";
		char chars[] = str.toCharArray();
		
		System.out.print("Method 1 ** :");
		for(int i =chars.length-1;i>=0;i--) {
			System.out.print(chars[i]);
		}
		
		StringBuilder sb = new StringBuilder();
		sb.append(str);
		System.out.println();
		System.out.println("Method 2 ** :"+sb.reverse());
		
		
	}

}
