
Program 1 :
public class Redwood extends Tree{
	public static void main(String []a){
		new Redwood.go();
	}
	void go(){
		go2(new Tree(), new Redwood());
		go2((Redwood)new Tree(),new Redwood());
	}
	void go2(Tree t1, Redwood r1){
		Redwood r2 = (Redwood)t1;
		Tree t2 = (Tree)r1;
	}
}

class Tree{
}

Output

runtime error: incompatable error at 12th line

Program 2 :

class Dog{
	public void bark(){	SOP("Woof");}
}

class Hound extends Dog{
	public void sniff(){
		SOP("sniff");
	}
	public void bark(){
		SOP("howl");
	}
}

public class DogShow{
	public static void main(String a[]){
		new DogShow().go();
	}

	void go(){
		new Hound().bark();
		((Dog)new Hound()).bark();
		((Dog)new Hound()).sniff();
	}
}

OUtput : compilation error. 45 line - sinff method doesnot exist in dog reference


Program 3 :

class Bird{
	{System.out.print("b1 ");}
	public Bird(){System.out.print("b2 ");}
}

class Raptor extends Bird{
	static{System.out.print("r1 ");}
	public Raptor(){system.out.print("r2 ");}
	{System.out.print("r3 ");}
	static {System.out.print("r4 ");}
}

public class Hawk extends Raptor{
	public static void main(String a[]){
		System.out.print("Pre");
		new Hawk();
		System.out.print("hawk ");
	}
}


output
r1
r4
Pre
b1
b2
r3
r2
hawk





