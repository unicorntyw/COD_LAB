
public class LabA8 {

	public static void main(String[] args) {
		int x =  Integer.parseInt(args[0]);
		System.out.println( Integer.toBinaryString( x ) + " ("+x+") " );
		int z = ~x + 1;
		System.out.println( Integer.toBinaryString( z ) + " ("+z+") " );
	}

}
