package com.java8;

import java.util.function.BiConsumer;

public class LamdaExpression {
	/*
	 * functional programming conciseness code(avoid boiler plate code) Lamda
	 * expression is a anonymous function(without name, return type and access
	 * modified and having one lamda expression( -> lamda symbol))
	 *Noraml programming : public void add(int a, int b){ syso(a+b);}
	 *
	 * lamda expression : (a,b) ->{syso(a+b);}
	 * 
	 */
	
	public static void main(String ...arg) {
		BiConsumer<Integer, Integer> biConsumer = (a, b) -> System.out.println(a+b);
		biConsumer.accept(3, 6);
	}
	
	

}
