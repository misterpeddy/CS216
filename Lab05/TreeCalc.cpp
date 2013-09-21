/*Michael Trotter
	mjt5v
	TreeCalc.cpp
	*/
// Insert your header information here
// TreeCalc.cpp:  CS 216 Tree Calculator method implementations

#include "TreeCalc.h"
#include <iostream>
#include <sstream>

   using namespace std;

//Constructor
    TreeCalc::TreeCalc()
   {
      mystack = stack<TreeNode>();
   }

//Destructor- frees memory
    TreeCalc::~TreeCalc()
   {
      cleanTree(&mystack.top());
      while(mystack.size() != 0)
         mystack.pop();
   }

//Deletes tree/frees memory
    void TreeCalc::cleanTree(TreeNode* ptr)
   {
      if(ptr->left != NULL)
         cleanTree(ptr->left);
      else if(ptr->right != NULL)
         cleanTree(ptr->right);
      else
      {
         delete ptr;
      }
   }

//Gets data from user
    void TreeCalc::readInput()
   {
      string response;
      cout << "Enter elements one by one in postfix notation" << endl
         << "Any non-numeric or non-operator character,"
         << " e.g. #, will terminate input" << endl;
   
      cout << "Enter first element: ";
      cin >> response;
   
    //while input is legal
      while (isdigit(response[0]) || response[0]=='/' || response[0]=='*'
            || response[0]=='-' || response[0]=='+' )
      {
         insert(response);
         cout << "Enter next element: ";
         cin >> response;
      }
   }

//Puts value in tree stack
    void TreeCalc::insert(const string& val)
   {
    // insert a value into the tree
      if(!isOperand(val))
      {
         mystack.push(TreeNode(val));
      }
      else
      {
         TreeNode * temp = new TreeNode(val);
         temp->right = &mystack.top();
         mystack.pop();
         temp->left = &mystack.top();
         mystack.pop();
         mystack.push(*temp);
      }
   }

//Prints data in prefix form
    void TreeCalc::printPrefix(TreeNode* ptr) const
   {
    // print the tree in prefix format
      if(isOperand(ptr->value))
      {
         cout << ptr->value << " ";
         printPrefix(ptr->left);
         printPrefix(ptr->right);
      }
      else
      {
         cout << ptr->value;
      }
   }

//Prints data in infix form
    void TreeCalc::printInfix(TreeNode* ptr) const
   {
    // print tree in infix format with appropriate parentheses
      
      if(isOperand(ptr->value))
      {
         cout << "(";
         printPrefix(ptr->left);
         cout << " " << ptr->value << " ";
         printPrefix(ptr->right); 
         cout << ")";
      }
      else
      {
         cout << ptr->value;
      }
   }

//Prints data in postfix form
    void TreeCalc::printPostfix(TreeNode* ptr) const
   {
    // print the tree in postfix form
      if(isOperand(ptr->value))
      {
         printPostfix(ptr->left);
         printPostfix(ptr->right);
         cout << ptr->value << " ";
      }
      else
      {
         cout << ptr-> value << " ";
      }
   }

// Prints tree in all 3 (pre,in,post) forms

    void TreeCalc::printOutput()
   {
      if (!mystack.empty())
      {
         cout << "Expression tree in postfix expression: ";
        // call your implementation of printPostfix()
         printPostfix(&mystack.top());
         cout << endl;
      
         cout << "Expression tree in infix expression: ";
        // call your implementation of printInfix()
         printInfix(&mystack.top());
         cout << endl;
      
         cout << "Expression tree in prefix expression: ";
        // call your implementation of printPrefix()
         printPrefix(&mystack.top());
         cout << endl;
      }
      else
         cout<< "Size is 0." << endl;
   }
	
    bool TreeCalc::isOperand(string value) const
   {
      return value[0] == '+' || value[0] == '*' || value[0] == '/' || (value[0] == '-' && value.length() > 1);
   }

//Evaluates tree, returns value
// private calculate() method
    int TreeCalc::calculate(TreeNode* ptr) const
   {
    // Traverse the tree and calculates the result
      if(ptr != NULL)
      {
         if(!isOperand(ptr->value))
         {
            return atoi(ptr->value.c_str());
         }
         else
         {
            if(ptr->value[0] == '-')
               return calculate(ptr->left) - calculate(ptr->right);
            else if(ptr->value[0] == '/')
               return calculate(ptr->left) / calculate(ptr->right);
            else if(ptr->value[0] == '*')
               return calculate(ptr->left) * calculate(ptr->right);
            else
               return calculate(ptr->left) + calculate(ptr->right);
         }
      }
   }

//Calls calculate, sets the stack back to a blank stack
// public calculate() method. Hides private data from user
    int TreeCalc::calculate()
   {
      int i = 0;
    // call private calculate method here
      i = calculate(&mystack.top());
      return i;
   }
