/*
Michael Trotter
mjt5v
1/29/08
*/
#include "ListItr.h"

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
