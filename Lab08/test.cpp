#include <iostream>
using namespace std;
void passIntValue(float value)
{
  value = 0.0;
}
void passIntRef(float & value)
{
  value = 0.0;
}
int main()
{
  float value = 0.0;
  passIntValue(value);
  passIntRef(value);
}
