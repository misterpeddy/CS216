/*Michael Trotter
mjt5v
2/3/08
TestPostfixCalculator.cpp
*/

#include "postfixCalculator.h"
   using namespace std;
    int main()
   {
      char array[30];
      cout << "If the program has yet to start, enter any non-digit and hit enter to continue." << endl;
      cin.getline(array, 30);
      string s = array;
      PostfixCalculator c;
      if(isdigit(array[0]))
      {
         cout << s << endl;
         cout << c.calc(s)<< endl;
      }
      else
      {
         s = "8 7 + 5 / ~";
         cout << c.calc(s)<< endl;
         s = "1 2 3 4 5 + + + +";
         cout << c.calc(s) << endl;
         s = "20 10 - -3 10 - - 2 -";
         cout << c.calc(s) << endl;
         s = "-1 -2 -5 3 * 2 -2 * * * *";
         cout << c.calc(s) << endl;  
         s = "-1512 -12 -2 / / -2 / 3 /";
         cout << c.calc(s) << endl; 
         s = "-1 ~ ~ ~"; 
         cout << c.calc(s) << endl;
         s = "8 9 - 5 * -3 ~ - 4 * 9 * ~ 8 9 * -";
         cout << c.calc(s) << endl;
         s = "6 4 + 5 / 3 * 6 6 * *";
         cout << c.calc(s) << endl;
         s = "3 4 + 7 / 4 - ~ 3 * 2 2 2 * * * 3 *";
         cout << c.calc(s) << endl;
         s = "220 4 -";
         cout << c.calc(s) << endl;
         s = "1296 6 /";
         cout << c.calc(s) << endl;
      }
      return 0;
   }
