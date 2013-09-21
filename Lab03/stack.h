/* Michael Trotter
   mjt5v
   02/05/08
   stack.h
*/
#ifndef STACK_H
#define STACK_H

#include <iostream>
#include <string>
   using namespace std;

   class ListNode;

    class ListNode
   {
   public:
      ListNode();	//Constructor
      int getValue();
   
   private:
      int value;
      ListNode *next, *previous;	//for doubly linked lists
      friend class Stack;	// List needs to be able to access/change
    // ListNode's next and previous pointers
      friend class ListItr;	// ListItr needs to access/change
   
    // Not writing a destructor is fine in this case since there is no
    // dynamically allocated memory in this class
   
   };
   
    class ListItr
   {
   public:
      ListItr();			//Constructor
      ListItr(ListNode* theNode);	// One parameter constructor
      bool isPastEnd() const;	//Returns true if past end position
    // in list, else false
      bool isPastBeginning() const;//Returns true if past first position
    // in list, else false
      void moveForward();	//Advances current to next position in list
    //(unless already past end of list)
      void moveBackward();	//Moves current back to previous position
    // in list (unless already past beginning of
    // list)
      int retrieve() const;	//Returns item in current position
   
   private:
      ListNode* current;		//holds the position in the list
      friend class Stack;	// List class needs access to “current”
    // ListNode's private data members
   };


   class Stack;

    class Stack
   {
   public:
      Stack();
      void push(int e);
      int top();
      void pop();
      bool empty();
      int size();
   private:
      ListNode *head, *tail;
      int count;
      friend class ListItr;
   };

#endif
