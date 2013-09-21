/*
Michael Trotter
mjt5v
1/29/08
*/
#include "ListNode.h"

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
