package com.practise;

public class Human {
	
	public int adharNumber;
	public String name;
	
	public Human(int adharNumber, String name) {
		this.adharNumber=adharNumber;
		this.name=name;
	}
	
	@Override
	public boolean equals(Object obj) {
		
		if(obj == this) {
			return true;
		}
		if(obj == null) {
			return false;
		}
		if(obj.getClass() != this.getClass()) {
			return false;
		}
		Human human = (Human)obj;
		if(human.adharNumber !=this.adharNumber ||
				human.name !=this.name) {
			return false;
		}
		return true;
	}

}
