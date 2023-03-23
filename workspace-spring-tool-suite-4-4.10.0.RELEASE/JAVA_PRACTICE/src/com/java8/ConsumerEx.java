package com.java8;

import java.util.function.Consumer;

public class ConsumerEx {

	public static void main(String[] args) {
		// Consumer is predefined functional Interface
		// it contains accept method
		// to combine use andThen 
		
		Consumer<Integer> var = i -> System.out.println("Printing I value from consumer :" +i);
		var.accept(25);
		
		Consumer<Integer> var1 = i -> System.out.println("Printing I value from consumer :" +i);
		var1.accept(35);
		
		var.andThen(var1).accept(36);

	}

}
