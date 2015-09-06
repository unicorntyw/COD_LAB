
public class LabA2 {

	public static void main(String[] args) {
		int x =  Integer.parseInt(args[0]);
		System.out.println( 
				Integer.toBinaryString( x )+"\n"+
				Integer.toHexString( x )+"\n"+
				Integer.toHexString( Integer.reverse( x ) )+"\n"+
				Integer.toHexString( Integer.reverseBytes( x ) )
				);
	}

}
