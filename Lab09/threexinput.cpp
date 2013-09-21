/*Michael Trotter
  mjt5v
  Prelab9
  threexinput.cpp
  */
  #include<iostream>
  #include "timer.h"
   using namespace std;
   extern "C" int threexplusone(int);
    int main()
   {
   	cout << "Please enter the number for calculation." << endl;
   	int num;
   	cin >> num;
   	cout << "Please enter the number of times to run calculation." << endl;
   	int times;
   	cin >> times;
   	int count;
   	timer t;
   	for(int x = 0; x < times; x++)
   	{
   		t.start();
   		count = threexplusone(num);
   		t.stop();
   		cout << "Input, " << num << " required " << count << " steps to complete." << endl;
   		cout << "The time required to complete was " << t << " seconds." << endl;
   	}
		return 0;
   }
