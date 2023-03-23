package com.oops;

public class AbstractClassImpl extends AbstaractEx {

	public static void main(String[] args) {

		//AbstaractEx AbstaractEx = new AbstaractEx(); // cannot instantiate abstract class
			
		AbstractClassImpl abstractClassImpl = new AbstractClassImpl();
		abstractClassImpl.m1();
		abstractClassImpl.m2();
		abstractClassImpl.x =100;
		System.out.println("printing abstarct class x values : "+abstractClassImpl.x);
	}
	@Override
	void m2() {
     System.out.println("AbstractClassImpl - M2 Method");		
	}

}
