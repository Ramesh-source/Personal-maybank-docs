package com.practise;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class TextReaderFile {

	public static void main(String[] args) throws FileNotFoundException,IOException{

		FileReader fr =new FileReader("D:\\Ramesh_Data\\java_txt.txt");
		BufferedReader br =new BufferedReader(fr);
		
		String str;
		
		while((str = br.readLine())!=null) {
			System.out.println(str);
		}
		br.close();
	}

}
