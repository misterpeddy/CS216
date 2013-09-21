/* Michael Trotter
	mjt5v
	huffmanenc.cpp
	CS216L-3
	*/
#include <iostream>
#include <sstream>
#include <stdio.h>
#include <string>
#include <map>
#include <vector>
#include "heap.cpp"
   using namespace std;
    class Node
    {
    	public:
       Node()
      {
         myChar = 0x00;
         myInt = 0;
         myRightChild = NULL;
         myLeftChild = NULL;
      }
       Node(const Node &n)
      {
         myChar = n.myChar;
         myInt = n.myInt;
         myLeftChild = n.myLeftChild;
         myRightChild = n.myRightChild;
      }
       Node(char c, int i, Node * left = NULL, Node * right = NULL)
      {
         myChar = c;
         myInt = i;
         myLeftChild = left;
         myRightChild = right;
      }
       char getChar()
      {
         return myChar;
      }
       int getInt()
      {
         return myInt;
      }
       int compareTo(Node p)
      {
         return myInt - p.getInt();
      }
       Node * getRightChild()
      {
         return myRightChild;
      }
       Node * getLeftChild()
      {
         return myLeftChild;
      }
      private:
      char myChar;
      int myInt;
      Node * myRightChild;
      Node * myLeftChild;
    };
    class Quatro
   {
   	private:
      char myChar;
      int myInt;
      string myCode;
      int myCount;
   	public:
       Quatro(char c, int i, string s, int count)
      {
         myChar = c;
         myInt = i;
         myCode = s;
         myCount = count;
      }
       Quatro(Node n, string c, int count)
      {
         myChar = n.getChar();
         myInt = n.getInt();
         myCode = c;
         myCount = count;
      }
       char getInt()
      {
         return myInt;
      }
       int getChar()
      {
         return myChar;
      }
       string getCode()
      {
         return myCode;
      }
       int getCount()
      {
         return myCount;
      }
   };
    void writeNode(Node * node, string code, FILE * file)
   {
      if(node != NULL)
      {
         writeNode(node->getLeftChild(), code+"1", file);
         if(node->getChar() >= 0x20 && node->getChar() <= 0x7E)
         {
            string line(1, node->getChar());
            line = line + '\t' + code + '\n';
            fputs(line.c_str(), file);
         }
         writeNode(node->getRightChild(), code+"0", file);
      }
   }
    void writeTree(Node * root, const char * filename)
   {
      FILE * file = fopen(filename, "w");
      writeNode(root, "", file);
      fputs("----------------------------------------", file);
      fclose(file);
   }
    vector<Quatro> getList(const char * filename, map<char, int> &theMap)
   {
      vector<Quatro> theList;
      vector<string> strings;
      FILE * file = fopen(filename, "r");
      if(file == NULL)
      {
         cout << "Invalid file name." << endl;
         exit(2);
      }
      char current;
      string s = "";
      while( (current = fgetc(file)) != EOF)
      {
         if(current == '\n')
         {
            strings.push_back(s);
            s = "";
         }
         else if(s == "-" && current == '-')
         {
            break;
         }
         else
         {
            s = s + current;
         }
      }
      fclose(file);
      for(int x = 0; x < strings.size(); x++)
      {
         string line = strings[x];
         char c = line[0];
         Quatro temp = Quatro(c, theMap[c], line.substr(2), line.substr(2).length());
         theList.push_back(temp);
      }
      return theList;
   }
    Node* buildTree(Heap<Node> heap)
   {
      Node * temp = NULL;
      Node * right = NULL;
      Node * left = NULL;
      while(heap.getSize() > 1)
      {
         right = new Node(heap.findMin());
         heap.deleteMin();
         left = new Node(heap.findMin());
         heap.deleteMin();
         temp = new Node((char)0x00, left->getInt() + right->getInt(), left, right);
         heap.insert(*temp);
      }
      return temp;
   }
    map<char, int> buildMap(const char * filename)
   {
      FILE * file = fopen(filename, "r");
      if(file == NULL)
      {
         cout << "Invalid file name." << endl;
         exit(2);
      }
      char current;
      map<char, int> theMap;
      map<char, int>::iterator itr; 
      while( (current = fgetc(file)) != EOF)
      {
         if(current < 0x20 || current > 0x7E)
            continue;
         itr = theMap.find(current);
         if(itr == theMap.end())
            theMap.insert(theMap.end(), pair<char, int>(current, 1));
         else
            itr->second = itr->second + 1;
      }
      fclose(file);
      return theMap;
   }
    double cost(vector<Quatro> & theList, int symbols)
   {
      double sum = 0;
      double value = 0;
      for(int x = 0; x < theList.size(); x++)
      {
         value = theList[x].getInt();
         value = value/symbols;
         value = value*theList[x].getCount();
         sum = sum + value;
      }
      return sum;
   }
    void encode(vector<Quatro> & theList, const char * input, const char * output)
   {
      FILE * in = fopen(input, "r");
      if(in == NULL)
      {
         cout << "Invalid file name." << endl;
         exit(2);
      }
      FILE * out = fopen(output, "a");
      fputc('\n', out); //start on a new line
      int symbols = 0;
      int huffSum = 0;
      char current;
      string insert = "";
      while( (current = fgetc(in)) != EOF)
      {
         if(current < 0x20 || current > 0x7E)
            continue;
         int x = 0;
         for(; x < theList.size(); x++)
         {
            if(theList[x].getChar() == current)
               break;
         }
         insert = theList[x].getCode() + " ";
         fputs(insert.c_str(), out);
         symbols++;
         huffSum = huffSum + theList[x].getCount();
      }
      fclose(in);
      fputc('\n', out);
      fputc('\n', out);
      fputs("----------------------------------------", out);
      fputc('\n', out);
      std::stringstream num;
      num << symbols;
      insert = "There were a total of " + num.str() + " symbols that are encoded";
      fputs(insert.c_str(), out);
      num.str("");
      num << theList.size();
      fputc('\n', out);
      insert = "There are " + num.str() + " distinct symbols used.";
      fputs(insert.c_str(), out);
      fputc('\n', out);
      num.str("");
      int ascii = 8*symbols;
      num << ascii;
      insert = "There were " + num.str() + " bits in the original file.";
      fputs(insert.c_str(), out);
      fputc('\n', out);
      num.str("");
      num << huffSum;
      insert = "There were " + num.str() + " bits in the compressed file.";
      fputs(insert.c_str(), out);
      fputc('\n', out);
      num.str("");
      double compress = ascii;
      compress = compress/huffSum;
      num << compress;
      insert = "This gives a compression ratio of " + num.str();
      fputs(insert.c_str(), out);
      fputc('\n', out);
      num.str("");
      num << cost(theList, symbols);
      insert = "The cost of the Huffman tree is " + num.str();
      fputs(insert.c_str(), out);
      fclose(out);
   }
    int main (int argc, char **argv) 
   {
   
    // verify the correct number of parameters
      if ( argc != 2 ) {
         cout << "Must supply the input file name as the one and only parameter" << endl;
         exit(1);
      }
      string filename = argv[1];
      map<char, int> theMap = buildMap(filename.c_str());
      Heap<Node> heap = Heap<Node>(1);
      map<char, int>::iterator itr;
      itr = theMap.begin();
      while(itr != theMap.end())
      {
         Node p=Node(itr->first, itr->second);
         heap.insert(p);
         itr++;
      }
      Node *root = buildTree(heap);
      string output = "output.txt";
      writeTree(root, output.c_str());
      vector<Quatro> list = getList(output.c_str(), theMap);
      encode(list, filename.c_str(), output.c_str());
      return 0;
   }

