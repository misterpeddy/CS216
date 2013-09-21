/*Michael Trotter
  mjt5v
  Postlab9
  CS216L-3
  */
  #include <iostream>
   using namespace std;
    class Alpha
    {
    public:
       virtual void print()
      {
         cout << "This is an alpha object." << endl;
      }
       virtual void printChar()
      {
         cout << 'A' << endl;
      }
   };
    class Beta: public Alpha
   {
   public:
       void print()
      {
         cout << "This is a beta object." << endl;
      }
       virtual void printChar()
      {
         cout << 'B' << endl;
      }
   };
    int main()
   {
      Alpha a1 = Alpha();
      a1.print();
      a1.printChar();
      Beta b1 = Beta();
      b1.print();
      b1.printChar();
      Alpha * a2 = new Beta();
      a2->print();
      a2->printChar();
      return 0;
   }