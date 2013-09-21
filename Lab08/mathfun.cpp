/*Michael Trotter
  mjt5v
  Prelab8
  mathfun.cpp
  */
  #include<iostream>
   using namespace std;
   extern "C" int product(int , int );
	extern "C" int power(int , int );
    int main()
   {
   	//Product subroutine
   	int first, second, result1;
   	cout << "Now running product subroutine..." << endl;
   	cout << "Please enter the first integer: " << endl;
   	cin >> first;
   	cout << "Please enter the second integer: " << endl;
   	cin >> second;
   	result1 = product(first, second);
   	cout << "The product is " << result1 << endl;
   	
   	//Power subroutine
   int base, pow, result2;
   	cout << "Now running power subroutine..." << endl;
   	cout << "Please enter the base: " << endl;
   	cin >> base;
   	cout << "Please enter the power: " << endl;
   	cin >> pow;
   	result2 = power(base, pow);
   	cout << "The result is " << result2 << endl;
      return 0;
   }
