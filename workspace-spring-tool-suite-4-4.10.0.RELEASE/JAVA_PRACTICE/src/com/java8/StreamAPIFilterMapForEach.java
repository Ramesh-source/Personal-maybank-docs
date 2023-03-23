package com.java8;

import java.util.*;

class StreamAPIFilterMapForEach1 {

	int id;
	String name;
	float price;

	public StreamAPIFilterMapForEach1(int id, String name, float price) {
		this.id = id;
		this.name = name;
		this.price = price;
	}
}

public class StreamAPIFilterMapForEach {
	public static void main(String[] args) {  
	        List<StreamAPIFilterMapForEach1> productsList = new ArrayList<StreamAPIFilterMapForEach1>();  
	        //Adding Products  
	        productsList.add(new StreamAPIFilterMapForEach1(1,"HP Laptop",25000f));  
	        productsList.add(new StreamAPIFilterMapForEach1(2,"Dell Laptop",30000f));  
	        productsList.add(new StreamAPIFilterMapForEach1(3,"Lenevo Laptop",28000f));  
	        productsList.add(new StreamAPIFilterMapForEach1(4,"Sony Laptop",28000f));  
	        productsList.add(new StreamAPIFilterMapForEach1(5,"Apple Laptop",90000f));  
			/*
			 * productsList.stream() .filter(p ->p.price> 30000) // filtering price .map(pm
			 * ->pm.price) // fetching price .forEach(System.out::println); // iterating
			 * price
			 	*/  
	   
	    
	       productsList.stream()  
           .filter(p ->p.price> 30000)   // filtering price  
           .map(pm ->pm.price)          // fetching price  
           .forEach(price -> System.out.println(price));  // iterating price  
	       
	        // iterating price 
	       
	    }
}
