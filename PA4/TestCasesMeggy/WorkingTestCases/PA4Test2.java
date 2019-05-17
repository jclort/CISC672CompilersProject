import meggy.Meggy;
class PA4Test2{
	// Allowed function calls don't compile with java because add would have to be static
	public static void main(String[] args){
		//Functions.add((byte)1,(byte)2);
	}
}

class Functions {
	//tests int boolean and byte types
	public int add(int a, int b){
		return a + b;
		
	}
	public boolean f(){
		return false;
	}
	public byte ff(){
		return (byte) 255;
	}
		
	
}


