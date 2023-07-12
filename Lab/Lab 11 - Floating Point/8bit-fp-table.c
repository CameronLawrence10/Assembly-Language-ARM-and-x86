//Cameron Lawrence
//Jun 22, 2023
//CPSC 2310 001
//Lab 11, Floating Point

#include <stdio.h>
  
int main()
{
  int sign, exp, fraction, significand;
  int i;
  float f;
  float prev = 0;

  for (i = 0; i < 256; i++)
  {
    /* begin your code */

    int a = 0;
    int TripleF = 0;
    int b = 0;
    int c = 0;
    	  
	  sign = (i >> 7) & 1;
	  fraction = (i & 7);
	  exp = (i >> 3) & 15;

//when exponent is a 0, it is just like a 1 exponent
	  if (exp == 0) {
	  	c = 1;
		exp -= 7;	 
	  }
	  	else {
			c = 0;
			exp -= 8;	 
	  	}

//math for significant and exponent
	  TripleF = fraction;
	  significand = TripleF | (!c << 3);
	  exp -= 3;
	  f = significand;

//positive exponent = loop until done, negative exponent = half 	  
	  if (0 < exp) {
		 for (a = 0; a < exp; a++) { f *= 2; }
	  } 
	  	else {
			for (b = 0; b > exp; b--) { f /= 2; }
	  	}

	  if(sign == 1) { 
	  	f = -f;
	  }	

    /* end your code */

    printf ("%02x => %08x = %+11.6f (spacing = %+11.6f)\n",
            i, *(int*) &f, f, prev-f);
    prev = f;
  }

  return 0;
}
