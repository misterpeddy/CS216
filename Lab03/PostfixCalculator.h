/*Michael Trotter
mjt5v
2/3/08
PostfixCalculator.h
*/

#ifndef POSTFIXCALCULATOR_H
#define POSTFIXCALCULATOR_H

#include <iostream>
#include "stack.h"
#include <string>

   using namespace std;

   class PostfixCalculator;

    class PostfixCalculator
   {
   public:
      PostfixCalculator(); //constructor
      int getSize(); //returns stack size
      int calc(string &s); //calculates current string
      void push(int x); //adds x to top of stack
      int * pop(); //removes topmost int from stack and returns it
      bool isOperand(string &s); //tests if input is number or operand
      void operateOrpush(string *s); //operates on the numbers in the stack or pushes the substring in
      void add(); //performs the addition
      void subtract(); //performs subtraction
      void divide(); //performs division
      void multiply(); //performs multiplication
      void negate(); //performs negation
   private:
      Stack myStack; //current stack
      string * myString; //current string
   };

#endif
