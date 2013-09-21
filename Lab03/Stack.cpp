/* Michael Trotter
	mjt5v
	02/05/08
	Stack.cpp
	*/
	
	#include "stack.h"
	
    ListNode::ListNode()
   {
      value = 0;
      previous = NULL;
      next = NULL;
   }

    int ListNode::getValue()
   {
      return value;
   }
   
    ListItr::ListItr()
   {
      current = NULL;
   }
   
    ListItr::ListItr(ListNode* theNode)
   {
      current = theNode;
   }

    bool ListItr::isPastEnd() const
   {
      return current->next == NULL || current == NULL;
   }
   
    bool ListItr::isPastBeginning() const
   {
      return current->previous == NULL || current == NULL;
   }
   
    void ListItr::moveForward()
   {
      if(!isPastEnd())
      {
         current = current->next;
      }
   }
   
    void ListItr::moveBackward()
   {
      if(!isPastBeginning())
      {
         current = current->previous;
      }	
   }
   
    int ListItr::retrieve() const
   {
      return (*current).getValue();
   }

    Stack::Stack()
   {
      head = new ListNode;
      tail = new ListNode;
      head->next = tail;
      tail->previous = head;
      count = 0;
   }

    void Stack::push(int e)
   {
      ListItr *iter = new ListItr(tail->previous);
      ListNode * node = new ListNode();
      node->value = e;
      node->previous = iter->current;
      iter->current->next = node;
      node->next = tail;
      tail->previous = node;  	
      count++;
   }
   
    int Stack::top()
   {
      ListItr * iter = new ListItr(tail->previous);
      return iter->retrieve();
   }

    void Stack::pop()
   {
      ListItr * iter = new ListItr(tail->previous);
      iter->moveBackward();
      iter->current->next = tail;
      tail->previous = iter->current;
   }
   
    bool Stack::empty()
   {
      return count == 0;
   }
   
    int Stack::size()
   {
      return count;
   }
