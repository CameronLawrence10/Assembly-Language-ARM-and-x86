/* Cameron Lawenrence
CPSC 2310 001
Lab4 - GDB and debuggin ARM
June 2 2023 */
public class FullAdder
{
	int sum;
	int carry;
	
	FullAdder()
	{
		sum = 0;
		carry = 0;
	}
	
	public int evaluate(int A, int B, int carryIn)
	{
		/* Missing code to compute "sum" and "carry" from the addition of A, B, and carryIn.  This
		* should only take two to five lines.  */
		sum = carryIn + A + B;
		if(sum == 2) {
			sum = 0;
			carry = 1;
		}
			else if(sum == 3) {
				sum = 1;
				carry = 1;
			}
				else { carry = 0; }

		/* End of missing code. */
		return sum;
	}
	
	public int getCarry()
	{
		return carry;
	}
	
	public static void main(String args[])
	{
		FullAdder testAdder = new FullAdder();
		
		System.out.println("Testing FullAdder Class");
		System.out.print("evaluate(0, 0, 0) returns " +
		testAdder.evaluate(0, 0, 0) );
		System.out.println(" with carry: " + testAdder.getCarry());
		System.out.println("        " +
		" Answer should be 0 with carry: 0 \n");
		
		System.out.print("evaluate(0, 0, 1) returns " +
		testAdder.evaluate(0, 0, 1) );
		System.out.println(" with carry: " + testAdder.getCarry());
		System.out.println("        " +
		" Answer should be 1 with carry: 0 \n");
		
		System.out.print("evaluate(0, 1, 0) returns " +
		testAdder.evaluate(0, 1, 0) );
		System.out.println(" with carry: " + testAdder.getCarry());
		System.out.println("        " +
		" Answer should be 1 with carry: 0 \n");
		
		System.out.print("evaluate(0, 1, 1) returns " +
		testAdder.evaluate(0, 1, 1) );
		System.out.println(" with carry: " + testAdder.getCarry());
		System.out.println("        " +
		" Answer should be 0 with carry: 1 \n");
		
		System.out.print("evaluate(1, 0, 0) returns " +
		testAdder.evaluate(1, 0, 0) );
		System.out.println(" with carry: " + testAdder.getCarry());
		System.out.println("        " +
		" Answer should be 1 with carry: 0 \n");
		
		System.out.print("evaluate(1, 0, 1) returns " +
		testAdder.evaluate(1, 0, 1) );
		System.out.println(" with carry: " + testAdder.getCarry());
		System.out.println("        " +
		" Answer should be 0 with carry: 1 \n");
		
		System.out.print("evaluate(1, 1, 0) returns " +
		testAdder.evaluate(1, 1, 0) );
		System.out.println(" with carry: " + testAdder.getCarry() );
		System.out.println("        " +
		" Answer should be 0 with carry: 1 \n");
		
		System.out.print("evaluate(1, 1, 1) returns " +
		testAdder.evaluate(1, 1, 1) );
		System.out.println(" with carry: " + testAdder.getCarry());
		System.out.println("        " +
		" Answer should be 1 with carry: 1 \n");
		
		System.out.println("Done Testing FullAdder Class");
	}
}
