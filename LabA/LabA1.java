
public class LabA1 {

	public static void main(String[] args) {
		byte z = (byte) 0b11111111;
		//byte z = Byte.MIN_VALUE;
		int z2 = z;
		z2 = z2 & 0xff;
		System.out.println(Integer.toBinaryString( z2 )+" ("+z2+")");
	
		/*
		int x = z >> 2;	
		System.out.println(Integer.toBinaryString( x )+" ("+x+")");
		int y = z >>> 2;	
		System.out.println(Integer.toBinaryString( y )+" ("+y+")");
		*/
	}

}
