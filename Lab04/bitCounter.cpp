/*
Michael Trotter
mjt5v
02/13/08
bitCounter.cpp
*/
#include <iostream>
   using namespace std;
    int countOnes(int input, int count)
   {
      if(input <= 1)
      {
         if(input%2 != 0)
         {
            count++;
         }
         return count;
      }
      else
      {
         if(input%2 != 0)
            count++;
         input = input/2;
         return countOnes(input, count);
      }
   }
   
    int main(int argc, char *argv[])
   {
      if(argc >= 2)
      {
         string s = argv[1];
         int input = atoi(s.c_str()); 
         cout << "The number of ones in " << input << " is " << countOnes(input, 0) << endl;
      }
      else
      {
         cout << "There is no input entered for this program." << endl;
      }
   }
