package com.practise;

import java.util.Arrays;

public class SortingArrayElement {

	public static void main(String[] args) {

		
		int arr[]= {20,12,12,45,24};
		
		System.out.println(" Array of elements :"+Arrays.toString(arr));
		
		int n= arr.length;
		
		//for(int i=0;i<n-1;i++) {
			
			for (int j=0;j<n-1;j++) {
				
				if(arr[j] > arr[j+1]) {
					int temp =arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
				}
			}
		//}
		System.out.println("sorting of array elementes"+Arrays.toString(arr));
	}

}
