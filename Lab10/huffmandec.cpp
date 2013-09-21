/*
  Michael Trotter
  CS216L-3
  mjt5v
  huffmanenc.cpp
 */
#include "heap.cpp"
#include <stdio.h>
#include <string>
   using namespace std;
    class Node
   {
   public:
       Node()
      {
         myChar = 0x00;
         myCode = "";
         myLeftChild = NULL;
         myRightChild = NULL;
      }
       Node(const Node &n)
      {
         myChar = n.myChar;
         myCode = n.myCode;
         myLeftChild = n.myLeftChild;
         myRightChild = n.myRightChild;
      }
       Node(char c, string s, Node * left = NULL, Node * right = NULL)
      {
         myChar = c;
         myCode = s;
         myLeftChild = left;
         myRightChild = right;
      }
       char getChar()
      {
         return myChar;
      }
       string getCode()
      {
         return myCode;
      }
       Node * getLeftChild()
      {
         return myLeftChild;
      }
       Node * getRightChild()
      {
         return myRightChild;
      }
       void setLeftChild(Node * left)
      {
         myLeftChild = left;
      }
       void setRightChild(Node * right)
      {
         myRightChild = right;
      }
   private:
      char myChar;
      string myCode;
      Node* myLeftChild;
      Node* myRightChild;
   };
    Node getNode(string line)
   {
      char c = line[0];
      string code = line.substr(2);
      code.erase(code.end()-1);
      Node node = Node(c, code);
      return node;
   }
    Node * buildTree(vector<Node> nodes)
   {
      Node * root = new Node();
      Node * temp = root;
      for(int x = 0; x < nodes.size(); x++)
      {
         string code = nodes[x].getCode();
         for(int y = 0; y < code.length(); y++)
         {
            if(y < code.length()-1)
            {
               if(code[y] == '0')
               {
                  if(temp->getLeftChild() == NULL)
                     temp->setLeftChild(new Node());
                  temp = temp->getLeftChild();
               }
               else
               {
                  if(temp->getRightChild() == NULL)
                     temp->setRightChild(new Node());
                  temp = temp->getRightChild();
               }
            }
            else
            {
               if(code[y] == '0')
               {
                  if(temp->getLeftChild() == NULL)
                     temp->setLeftChild(new Node(nodes[x]));
               }
               else
               {
                  if(temp->getRightChild() == NULL)
                     temp->setRightChild(new Node(nodes[x]));
               }
            }
         }
         temp = root;
      }
      return temp;
   }
    string decode(Node * root, string line)
   {
      string decipher = "";
      Node * temp = root;
      for(int x = 0; x < line.length(); x++)
      {
         if(line[x] == '0')
            temp = temp->getLeftChild();
         else
            temp = temp->getRightChild();
         if(temp->getChar() != 0x00)
         {
            decipher = decipher + temp->getChar();
            temp = root;
         }
      }
      return decipher;
   }
    string decrypt(const char * filename)
   {
      FILE * input = fopen(filename, "r");
      if(input == NULL)
      {
         cout << "Error: Invalid File Name." << endl;
         exit(2);
      }
      char current;
      char temp;
      string line = "";
      vector<Node> theNodes;
   //Build Tree
      while( (current = getc(input)) != EOF && (current != temp || temp != '-'))
      {
         if(current != '\n')
            line = line + current;
         else
         {
            Node temp = getNode(line);
            theNodes.push_back(temp);
            line = "";
         }
         temp = current;
      }
      Node * root = buildTree(theNodes);
   //Cut through lines
      while( (current = getc(input)) != EOF && current == '-');
   //Read Code
      line = "";
      while( (current = getc(input)) != EOF && current != '-')
      {
         if(current != '0' && current != '1')
            continue;
         line = line + current;
      }
      fclose(input);
   //Decrypt
      string decrypt = decode(root, line);
      return decrypt;
   }
    void output(const char * filename, string output)
   {
      FILE * file = fopen(filename, "w");
      if(file == NULL)
      {
         cout << "Invalid file name" << endl;
         exit(2);
      }
      fputs(output.c_str(), file);
      fclose(file);
   }
    int main (int argc, char **argv) 
   {
   
    // verify the correct number of parameters
      if ( argc != 2 ) {
         cout << "Must supply the input file name as the one and only parameter" << endl;
         exit(1);
      }
      string filename = argv[1];
      string decoded = decrypt(filename.c_str());
      string outputFile = "output.txt";
      output(outputFile.c_str(), decoded);
   }
