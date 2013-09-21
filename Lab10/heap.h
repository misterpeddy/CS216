/* Michael Trotter
	mjt5v
	CS216L-3
	heap.h
	Adapted from the code provided from Collab
	*/
#include <vector>
   using namespace std;
    template<typename Node>
    class Heap
   {
   public:
      explicit Heap(int capacity = 1);
      explicit Heap(const vector<Node> & items);
      bool isEmpty() const;
      Node & findMin();
      void insert(Node & x);
      void deleteMin();
      void makeEmpty();
      int getSize();
   private:
      int currentSize;
      vector<Node> list;
      void buildHeap();
      void percolateDown(int hole);
   };
