import meggy.Meggy;
class NameCollision{
	
	//tests toneStart, Meggy.Tone expression and void type
	public static void main(String[] args){
		
		new Functions().noise(3);
		
	}
	
	
}
class Functions {
	public void noise(int duration){
		Meggy.toneStart(Meggy.Tone.B3,duration);
		
	}
}

class y {
	int x;
	public void y(int x){int x;	}

}



