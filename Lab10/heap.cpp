/* Michael Trotter
	mjt5v
	heap.cpp
	CS216L-3
	*/
#include "heap.h"
#include <exception>
#include <iostream>
    
    class UnderflowException: public exception
   {
       virtual const char* what() const throw()
      {
         return "Heap is empty";
      }
   };
    template <typename Node>
    Heap<Node>::Heap(int capacity):list(capacity+1), currentSize(0){}
    template <typename Node>
    Heap<Node>::Heap(const vector<Node> & items): list(items.size()+10), currentSize(items.size())
   {
      for(int i = 0; i < items.size(); i++)
         list[i+1] = items[i];
      buildHeap();
   }
    template <typename Node>
    bool Heap<Node>::isEmpty() const
   {
      return currentSize == 0;
   }
    template<typename Node>
    Node & Heap<Node>::findMin()
   {
      if(isEmpty())
         throw UnderflowException();
      return list[1];
   }    
    template<typename Node>
    int Heap<Node>::getSize()
   {
      return currentSize;
   }
    template<typename Node>
    void Heap<Node>::insert(Node & x)
   {
      if(currentSize == list.size() - 1)
         list.resize(list.size()*2);
         //Percolate up
      int hole = ++currentSize;
      for(; hole>1 && x.compareTo(list[hole/2]) < 0; hole /= 2)
      {
         list[hole] = list[hole/2];
      }
      list[hole] = x;
   }  
    template<typename Node>
    void Heap<Node>::deleteMin()
   {
      if(isEmpty())
         throw UnderflowException();
   	//put last element at top of heap
      list[1] = list[currentSize--];
   	//percolate down
      percolateDown(1);
   }
    template<typename Node>
    void Heap<Node>::makeEmpty()
   {
      currentSize = 0;
   }
    template<typename Node>
    void Heap<Node>::buildHeap()
   {
      for(int i = currentSize/2; i > 0; i--)
         percolateDown(i);
   }
    template<typename Node>
    void Heap<Node>::percolateDown(int hole)
   {
      int child;
      Node temp = list[hole];
      for(; hole*2 <= currentSize; hole = child)
      {
         child = hole*2;
         if(child!=currentSize && list[child+1].compareTo(list[child])< 0)
            child++; //look at min of 2 children
         if(list[child].compareTo(temp) < 0)
            list[hole] = list[child];
         else
            break;
      }
      list[hole] = temp;
   }
