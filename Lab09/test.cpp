/*
Michael Trotter
test.cpp
inlab9
CS216L-3
*/
#include <iostream>
using namespace std;
int getOne()
{
  return 1;
}
int getTwo()
{
  int count = 0;
  for(int x = 1; x <= 2; x++)
    count++;
  return count;
}
int getThree()
{
  int count = 0;
  while(count!=3)
    {
    count++;
    }
  return count;
}
int getFour()
{
  int count = 0;
  do
    {
      count++;
    }while(count != 4);
  return count;
}
int main()
{
  cout << getOne() << endl;
  cout << getTwo() << endl;
  cout << getThree() << endl;
  cout << getFour() << endl;
  return 0;
}
