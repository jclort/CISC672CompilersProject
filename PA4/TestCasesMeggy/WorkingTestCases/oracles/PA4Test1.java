import meggy.Meggy;
class PA4Test1{
	
	//tests toneStart, Meggy.Tone expression and void type
	public static void main(String[] args){
		
		new Functions().noise(3);
		new Functions2().noise(3);
		
	}
	
	
}
class Functions {
	public int noise(int duration){
		Meggy.toneStart(Meggy.Tone.B3,duration);
		return 1;
}		
	
}

class Functions2 {
	public void noise(int duration){
		Meggy.toneStart(Meggy.Tone.B3,duration);
		
	}
}



