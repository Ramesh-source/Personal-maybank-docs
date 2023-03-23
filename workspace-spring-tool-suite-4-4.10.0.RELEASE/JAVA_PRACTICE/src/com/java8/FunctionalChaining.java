package com.java8;

import java.util.function.Function;

public class FunctionalChaining {

	public static void main(String[] args) {

		Function<Integer, Integer> doubleleft = i -> 2*i;
		System.out.println("Double Function :"+ doubleleft.apply(20));
		
		Function<Integer, Integer> thribleLeft = j -> j*j;
		System.out.println("Thrible Function :"+thribleLeft.apply(20));
		
		// function chaining - andThen - first take doubleleft value and then thribleLeft -- 20*2= 40 , 40*3= 120 ans
		System.out.println("Funcitonal Chaining_ add then : "+doubleleft.andThen(thribleLeft).apply(30));
		
		// function chaining - compose - first take thribleLeft value and then thribleLeft -- 20*3= 60 , 60*2= 120 ans
		System.out.println("Funcitonal Chaining _ composing : "+doubleleft.compose(thribleLeft).apply(30));
	}

}
