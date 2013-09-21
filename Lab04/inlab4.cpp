/* 
   Michael Trotter
   mjt5v
   inlab4.cpp
   2/12/08
*/

#include <iostream>

using namespace std;
void part1()
{
  bool t1 = true;
  char t2 = 'A';
  int t3 = 16;
  double t4 = 4.125;
  int * t5 = new int(4);
  //break at line 18
  cout << "The value of t1 is " << t1 << endl;
  cout << "The value of t2 is " << t2 << endl;
  cout << "The value of t3 is " << t3 << endl;
  cout << "The value of t4 is " << t4 << endl;
  cout << "The value of t5 is " << t5 << endl;
}

void part2()
{
  int IntArray[10];
  char CharArray[10];

  int IntArray2D[6][5];
  char CharArray2D[6][5];

  for(int x = 0; x <10; x++)
    {
      IntArray[x] = x;
    }
  
  for(int x = 0; x <10; x++)
    {
      CharArray[x] = 2*x;
    }

  for(int x = 0; x < 6; x++)
    {
      for(int y = 0; y < 5; y++)
	{
	  IntArray2D[x][y] = x+y;
	}
    }

for(int x = 0; x < 6; x++)
    {
      for(int y = 0; y < 5; y++)
	{
	  CharArray2D[x][y] = x*y;
	}
    }
}

int main()
{
  // part1();
  part2();
}
