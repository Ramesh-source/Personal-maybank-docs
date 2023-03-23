package com.practise;

public class SumOfArrayElements {

	public static void main(String[] args) {

		int arr[] = {1,2,3,4,10};
		
		int sum =0;
		int sum1 =0;
		
		for(int i=0; i<=arr.length-1;i++) {
			sum =sum+arr[i];
		}
		
		System.out.println("Sum of elements : "+sum);
		
		// enhanced loop
		
		for(int value:arr) {
			sum1 +=value;
		}
		System.out.println("2 sum of array elements : "+sum1);
		
	}

}
