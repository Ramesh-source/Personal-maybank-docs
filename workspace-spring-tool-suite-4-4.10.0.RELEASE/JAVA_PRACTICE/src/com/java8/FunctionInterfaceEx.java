/**
 * 
 */
package com.java8;

/**
 * @author 00134670
 *
 */
//@FunctionalInterface
public interface FunctionInterfaceEx {
	
	void print();
	
	static void print1() {
		System.out.println("Print the default values in print1 method");
	}
	
	default void display() {
		System.out.println("welcome to display in default method");
	}

}
