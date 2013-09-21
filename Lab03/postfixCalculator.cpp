/*
Michael Trotter
mjt5v
2/3/08
PostfixCalculaotr.cpp
*/
#include <cstdlib>
#include "postfixCalculator.h"
#include "stack.h"
    PostfixCalculator::PostfixCalculator()
   {
      myStack = Stack();
      myString = NULL;
   }

    int PostfixCalculator::getSize()
   {
      return myStack.size();
   }
	
    int PostfixCalculator::calc(string &s)
   {
      unsigned int * x = new unsigned int;
      myString = &s;
      *x = myString->find_first_of(" ");
      string *sub = new string;
      while(*x != myString->find_last_of(" "))
      {
         *sub = myString->substr(0, *x);
         operateOrpush(sub);
         if(*x+1 < myString->length())
         {
            *x+=1;
            *myString = myString->substr(*x);
         }
         *x = myString->find_first_of(" ");
      }
      *sub = myString->substr(0, *x);
      operateOrpush(sub);
      *sub = myString->substr(*x+1);
      operateOrpush(sub);
      return *pop();
   }
    void PostfixCalculator::operateOrpush(string* sub)
   {
      const char* first;
      if(isOperand(*sub))
      {
         first = sub->data();
         switch((int)*first)
         {
            case 42: multiply();
               break;
            case 43: add();
               break;
            case 45: subtract();
               break;
            case 47: divide();
               break;
            default: negate();
         }
      }
      else 
      {
         push(atoi(sub->c_str()));
      }
   }
    void PostfixCalculator::add()
   {
      if(getSize() >= 2)
      {
         int * a = pop();
         int * b = pop();
        
         int *result = new int(*a+*b);
         myStack.push(*result);
      }
   }
    void PostfixCalculator::multiply()
   {
      if(getSize() >= 2)
      {
         int * a = pop();
         int * b = pop();
         
         int *result = new int(*a * *b);
         myStack.push(*result);
      }
   }
    void PostfixCalculator::subtract()
   {
      if(getSize() >= 2)
      {
         int * a = pop();
         int * b = pop();
         
         int *result = new int(*b - *a);
      
         myStack.push(*result);
      }
   
   }
    void PostfixCalculator::divide()
   {
      if(getSize() >= 2)
      {
         int * a = pop();
         int * b = pop();
         
         int *result = new int(*b / *a);
         myStack.push(*result);
      }
   
   }
    void PostfixCalculator::negate()
   {
      if(getSize() >= 1)
      {
         int * a = pop();
         int *result = new int(- *a);
         myStack.push(*result);
      }
   }
    bool PostfixCalculator::isOperand(string &s)
   {
      return s.compare("+") == 0 || s.compare("-") == 0|| s.compare("*") == 0|| s.compare("/")==0 || s.compare("~") == 0;
   }
   
    void PostfixCalculator::push(int x)
   {
      myStack.push(x);
   }
   
    int *PostfixCalculator::pop()
   {
      if(!myStack.empty())
      {
         int *temp = new int(myStack.top());   
         myStack.pop();
         return temp;
      }
   }
