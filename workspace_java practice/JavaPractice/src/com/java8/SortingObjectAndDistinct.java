package com.java8;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class SortingObjectAndDistinct {


	 
	  public static void main(String[] args) 
	  {
	    Stream<Employee> stream1 = getEmployeeListOne().stream();
	    Stream<Employee> stream2 = getEmployeeListTwo().stream();
	    
	     
		/*
		 * Stream<Employee> resultingStream = Stream.concat(stream1, stream2)
		 * .filter(distinctByKey(p ->p.getFname()));
		 */
	    
	    List<Employee> personListFiltered = stream2.filter(distinctByKey(p -> p.getFname())).collect(Collectors.toList());
	     
	   //resultingStream.collect(Collectors.toList());
	    personListFiltered.forEach(a -> System.out.println(a.getFname()));
	  }
	   
	  public static <T> Predicate<T> distinctByKey(Function<? super T, Object> keyExtractor)
	  {
	      Map<Object, Boolean> map = new ConcurrentHashMap<>();
	      return t -> map.putIfAbsent(keyExtractor.apply(t), Boolean.TRUE) == null;
	  }
	 
	  private static ArrayList<Employee> getEmployeeListOne() 
	  {
	    ArrayList<Employee> list = new ArrayList<>();
	    list.add( new Employee(1l, "Lokesh", "Gupta") );
	    list.add( new Employee(5l, "Brian", "Piper") );
	    list.add( new Employee(7l, "Charles", "Piper") );
	    list.add( new Employee(6l, "David", "Beckham") );
	        return list;
	  }
	   
	  private static ArrayList<Employee> getEmployeeListTwo() 
	  {
	    ArrayList<Employee> list = new ArrayList<>();
	    list.add( new Employee(2l, "Lokesh", "Gupta") );
	    list.add( new Employee(4l, "Brian", "Piper") );
	    list.add( new Employee(3l, "David", "Beckham") );
	        return list;
	  }
	}
