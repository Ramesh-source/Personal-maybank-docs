package com.oops;

public class MyInterfaceImpl implements MyInterface //,SecondInterface 
{

	public static void main(String[] args) {
		MyInterfaceImpl myInterface = new MyInterfaceImpl();
		myInterface.m1();

		System.out.println(myInterface.i);		
		myInterface.m2();
		System.out.println(myInterface.var);
	}

	@Override
	public void m1() {
		System.out.println("M1 Method Executed");
	}

	@Override
	public void m2() {
		System.out.println("M2 Method Executed");
	}

}
