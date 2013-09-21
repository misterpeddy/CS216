/*
Michael Trotter
mjt5v
2/11/08
prelab4.cpp
*/
#include <iostream>
#include <sstream>
#include <math.h>
   using namespace std;
   
    void sizeOf()
   {
      cout << "The size of an int is " << sizeof(int) << " bytes" << endl;
      cout << "The size of a float is " << sizeof(float) << " bytes" << endl;
      cout << "The size of a double is " << sizeof(double) << " bytes" << endl;
      cout << "The size of a char is " << sizeof(char) << " byte" << endl;
      cout << "The size of a bool is " << sizeof(bool) << " byte" << endl;
      cout << "The size of an int* is " << sizeof(int*) << " bytes" << endl;
      cout << "The size of a char* is " << sizeof(char*) << " bytes" << endl;
      cout << "The size of a double* is " << sizeof(double*) << " bytes" << endl;
   }
   
    string outputBinary(unsigned int num)
   {
      double exp = log10(num)/log10(2);
      int power = (int)(ceil(exp));
      int high = (int)(pow(2, power));
      stringstream out;
      string s;
      out << num;
      s = "The binary representation of " + out.str() + " is...";
      for(int x = 8*sizeof(unsigned int); x > power; x--)
      {
         s = s + "0";
      }
      for(int x = high; x >= 1; x=x/2)
      {
         if(x > num)
         {
            s = s + "0";
         }
         else
         {
            num = num - x;
            s = s + "1";
         }
      }
      return s;
   }
      
    void overflow()
   {
      int exponent = sizeof(int)*8;
      unsigned int max = (unsigned int)(pow(2, exponent)-1);
      cout << "Adding one to " << max << " produces " << (max+1) << endl;
      cout << "There is overflow in this addition. The extra one needed to represent the next value in binary has been chopped off, leaving 0 as the answer." << endl;
   }

    void storage()
   {
      int* x;
      char* y;
      double* z;
   
      bool a = true;
      bool b = false;
   }   
    int main()
   {
      cout << outputBinary(65536) << endl;
      return 0;
   }

