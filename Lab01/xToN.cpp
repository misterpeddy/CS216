/*
Michael Trotter
mjt5v
1/22/08
xToN.cpp
 */

#include <iostream>
using namespace std;

//computes var x to var n pwr
int xton(int a, int b)
{
  int value = 0;
  if(b >  0)
    {
      b--;
      value = a*xton(a,b);
    }
  else if(b == 0)
    {
      value = 1;
    }
  return value;
}

int main()
{
  int a, b;
  cout << "Please enter the base." << endl;
  cin >> a;
  cout << "Please enter the exponent." << endl;
  cin >> b;
  cout << "The result is ... " <<  xton(a,b) << endl;
  return 0;
}
