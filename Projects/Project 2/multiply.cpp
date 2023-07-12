//Cameron Lawrence
//CPSC 2310 001
//Programming Assingment 2 - Hardwarre Multiplication Algorithm
//June 11 2023
//This program takes two 8 bits and multiplys them 
#include <cmath>
#include <string>
#include <iostream>
#include <cstdlib>
#include <cstdio>
using namespace std;


//num to ones and zeros
string Ones(int num) {
   string zeros;
   for(int i = 7; i >= 0; i--) {
	   if((num >> i) & 1) {
         zeros.push_back('1');
      }
	      else {
            zeros.push_back('0');
         }
   }
   return zeros;
}

//dash lines to seperate between steps
void dash(void) {
   for(int i = 0; i <= 50; i++) {
      cout << "-";
   }
   cout << endl;
}

int main(void){
   
   int times;
   int times2;
   int A = 0;
   int C = 0;
   int MD = 0;
   int MQ = 0;

//reading in multiplier and multiplicand  
   cout << "Enter two numbers between 0 and 225: ";
   cin >> times2; 
   cin >> times;

//checking for range
   if(times2 < 0 || times2 > 255 || times < 0 || times > 255 ) {
	  cout << "Not within range. Please enter a valid number between 0 and 255.\n";
	  return 1;
   }

//spacing and correct output
   cout << "\nmultiplicand: " << times2 << endl;
   cout << "multiplier: " << times;
   cout << endl << endl;
   cout << "c and acc set to 0\n";

//variables for binary values
   string times2A = Ones(times2);
   string timesA = Ones(times);
   MQ = times;
   MD = times2;

//more print statements for correct output
   cout << "mq set to multiplier\t= " << times << " decimal and ";
   cout << timesA << " binary\n";
   cout << "mdr set to multiplicand\t= " << times2 << " decimal and ";
   cout << times2A << " binary\n";

   dash();

   //create binary strings for the MDR, MQ, and ACC.
   string MD1;
   string MQ1;
   string A1;
   string C1;

   for(int i = 1; i <= 8; i++) {
	  MD1 = Ones(MD);
	  MQ1 = Ones(MQ);
	  A1 = Ones(A);

	  cout << "step " << i << ":   " << C << " " << A1 << " " << MQ1;
     cout << endl;

//MQ, if ACC is than 255 then carry is 1
	   if(MQ1[7] == '1') {
		   cout << "        +   " << MD1 << "        ^" << "add based on lsb=1\n" << "          ----------\n";
		   A += times2;
		   if(A > 255) {
            C = 1;
         }
	   }
	      else{
		      cout << "        +   " << MD1 << "        ^" << "no add based on lsb=0\n" << "          ----------\n";
	      }

	  cout << "          " << C << " " << A1 << " " << MQ1 << endl << "       >>                     shift right";
	  cout << endl;
	  
//shifting to the right
	  MQ = MQ>>1;
	  if (A1[7] == '1') {
        MQ += 128;
      }
	  A = A>>1;
	  C = 0;

	  MD1 = Ones(MD);
	  MQ1 = Ones(MQ);
	  A1 = Ones(A);
	  cout<< "          " << C << " " << A1 << " " << MQ1 << endl;
	  
	  dash();
   }

//don't forget C MATH!!!!
//math for the final print
   string answer = A1 + MQ1;
   int num = 0;
   for (int i = 7; i >= 0; i--) {
	   if (answer[i-1] == '1') {
		num+= pow(2, 7-i);
	   }
   }
//last print to show results
//printf because easier to print all of the space than the precision stuff
   cout << "check:                binary   decimal\n" << "                    " << times2A;
   printf("% 10i\n", times2);
   cout << "             x      " << timesA;
   printf("  x%7i\n", times);
   cout << "             ----------------   ------\n" << "            " << answer;
   printf("%10i\n", num);

   return 0;
}