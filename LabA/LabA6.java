
public class LabA6 {

	public static void main(String[] args) {
		int x = Integer.parseInt(args[0]);
		System.out.println( Integer.toBinaryString( x ) );
		int mask1 = 1 << 10;
		//System.out.println( "Mask1="+Integer.toBinaryString( mask1 ) );
		int mask2 = ~(1 << 11);
		//System.out.println( "Mask2="+Integer.toBinaryString( mask2 ) );
		x = x | mask1;
		System.out.println( Integer.toBinaryString( x ) );
		x = x & mask2;
		System.out.println( Integer.toBinaryString( x )+" ("+x+")");
	}

}
