
public class LabA7 {

	public static void main(String[] args) {
		int x = Integer.parseInt(args[0]);
		System.out.println( Integer.toBinaryString( x ) );
		int XORtmp = ( (x>>10)^(x>>20) ) & 1;// ((1<<1)-1);
		x = x ^ ( (XORtmp<<20)|(XORtmp<<10) );
		System.out.println( Integer.toBinaryString( x )+" ("+x+")");
	}

}
