// NOTE: in order to compile this system on Linux (and most Unix
// systems) you will have to include the -lrt flag to g++.  This does
// NOT apply to Cygwin, however.

#include <iostream>
#include "timer.cpp"
//#include "hashTable.cpp"
   using namespace std;
	
    int main (void) {
      timer t;
      t.start();
   // do something that takes some time...
   	
   //for ( int i = 0; i < 1000000000; i++ );
      t.stop();
      cout << t << endl;
   }
