/*
Michael Trotter
mjt5v
1/29/08
*/
#include "List.h"

    List::List()
   {
      head = new ListNode;
      tail = new ListNode;
      head->next = tail;
      tail->previous = head;
      count = 0;
   }

    List::List(const List & original)
   {
     
      head = new ListNode;
      tail = new ListNode;
      count = 0;
      head->next = tail;
      tail->previous = head;
      ListItr iter(original.head->next);
      while(!iter.isPastEnd())
      {
         insertAtTail(iter.retrieve());
         iter.moveForward();
      }
   }
	
    List::~List()
   {
      makeEmpty();
      delete head;
      delete tail;
      count = 0;
   }

    List& List::operator=(const List &source)
   {
      if(this == &source)
         return *this;
      else{
         makeEmpty();
         count = 0;
         ListItr iter(source.head->next);
         while(!iter.isPastEnd())
         {
            insertAtTail(iter.retrieve());
            iter.moveForward();
         }
         return *this;
      }
   }
   
    bool List::isEmpty() const
   {
      return count == 0;
   }
	
    void List::makeEmpty()
   {
      while(count > 0)
      {
         remove((head->next)->getValue());
         count--;
      }
   }
	
    ListItr List::first()
   {
      return ListItr(head->next);
   }
	
    ListItr List::last()
   {
      return ListItr(tail->previous);
   }
   
    void List::insertAfter(int x, ListItr position)
   {
      ListNode * node = new ListNode;
      node->value = x;
      ListNode * temp = position.current;
      position.moveForward();
      temp->next = node;
      node->previous = temp;
      node->next = position.current;
      position.current->previous = node;
      count++;
   }
   
    void List::insertBefore(int x, ListItr position)
   {
      ListNode * node = new ListNode;
      node->value = x;
      ListNode * temp = position.current;
      position.moveBackward();
      temp->previous = node;
      node->next = temp;
      node->previous = position.current;
      position.current->next = node;
      count++;
   }
   
    void List::insertAtTail(int x)
   {
      ListNode * node = new ListNode;
      node->value = x;
      ListItr iterator = last();
      iterator.current->next = node;
      node->previous = iterator.current;
      node->next = tail;
      tail->previous = node;
      count++;
   }
   
    void List::remove(int x)
   {
      ListItr iterator = find(x);
      if(!iterator.isPastBeginning()||!iterator.isPastEnd())
      {
         ListNode *current = iterator.current;
         iterator.moveBackward();
         ListNode *alpha = iterator.current;
         iterator.moveForward();
         iterator.moveForward();
         ListNode *omega = iterator.current;
         alpha->next = omega;
         omega->previous = alpha;
         delete current;
         count--;
      }
   }
   
    ListItr List::find(int x)
   {
   	
      ListItr iterator = first();
      while((*iterator.current).getValue() != x && !iterator.isPastEnd())
      {
         iterator.moveForward();
      }
      return iterator;
   }
   
    int List::size() const
   {
      return count;
   }
   
    void printList(List& theList, bool forward)
   {
      if(forward)
      {
         ListItr iter = theList.first();
         while(!iter.isPastEnd())
         {
            cout << iter.retrieve() << endl;
            iter.moveForward();
         }
      }
      else
      {
         ListItr iter = theList.last();
         while(!iter.isPastBeginning())
         {
            cout << iter.retrieve() << endl;
            iter.moveBackward();
         }
      }
   }
