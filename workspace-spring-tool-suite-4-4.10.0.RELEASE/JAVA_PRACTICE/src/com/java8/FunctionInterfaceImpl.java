package com.java8;

public class FunctionInterfaceImpl implements FunctionInterfaceEx{

	public static void main(String[] args) {
		//System.out.println(FunctionInterfaceImpl.class.getClassLoader());
		FunctionInterfaceEx functionInterfaceEx = new FunctionInterfaceImpl();
		functionInterfaceEx.display();
		functionInterfaceEx.print();
		FunctionInterfaceEx.print1(); // static method in interface// 
		
	}

	@Override
	public void print() {
          System.out.println("Print function interface override method");		
	}

}
