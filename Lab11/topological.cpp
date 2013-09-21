/**
	*@author Michael Trotter
	*@author mjt5v
	*@date 4/22/08
	*@brief topological.cpp
	**/
#include <stdio.h>
#include <vector>
#include <iostream>
   using namespace std;
    class Node
   {
   public:
   /**
   	@brief Constructs a Node using name argument
   	@param name String representing course \n
   					if none is provided, "" is used
   	
   **/
       Node(string name = "")
      {
         myName = name;
      }
      /**
   		@brief Returns the course name stored in myName
   		@return myName
   	**/
       string getName()
      {
         return myName;
      }
      /**
   		@brief Returns the vector containing all of the Nodes that a given Node links to
   		@return myOutNodes
   	**/
       vector<Node*> getOutNodes()
      {
         return myOutNodes;
      }
      /**
   		@brief Returns the vector containing all of the Nodes that link to a given Node
   		@return myInNodes
   	**/
       vector<Node*> getInNodes()
      {
         return myInNodes;
      }
      /**
   		@brief Links node to the current Node
   		@details Pushes node to end of the vector containing all of the linked Nodes
   		@param *node A pointer to the Node to be linked
   		@return void
   	**/
       void addNode(Node* node)
      {
         myOutNodes.push_back(node);
         node->myInNodes.push_back(this);
      }
   private:
      vector<Node*> myOutNodes;
      string myName;
      vector<Node*> myInNodes;
   };
   /**
		@brief Takes the prerequisite and course, adds them if they are not on the vector and creates link from prerequisite to course
		@return void
		@param line The string containing the prerequisite and the course
		@param theNodes The vector containing the nodes
	**/
    void insertNodes(string & line, vector<Node*> & theNodes)
   {
      unsigned int pos = line.find(" ");
      string left = line.substr(0, pos);
      string right = line.substr(pos+1);
   	
      vector<Node*>::iterator itr1;
      vector<Node*>::iterator itr2;
      itr1 = theNodes.begin();
      //look for node containing left
      while(itr1 != theNodes.end())
      {
         if((*itr1)->getName() == left)
            break;
         itr1++;
      }
   	//if left wasn't found
      Node * temp;
      if(itr1 == theNodes.end())
      {
         temp = new Node(left);
         theNodes.push_back(temp);
      }
      else
      {
         temp = *(itr1);
      }
      //look for node containing right
      itr2 = theNodes.begin();
      while(itr2 != theNodes.end())
      {
         if((*itr2)->getName() == right)
            break;
         itr2++;
      }
      Node * temp2;
   	//if right wasn't found
      if(itr2 == theNodes.end())
      {
         temp2 = new Node(right);
         theNodes.push_back(temp2);
      }
      else
      {
         temp2 = *itr2;
      }
      temp->addNode(temp2);
   }
   /**
	@brief Opens file and creates nodes from it
	@param filename The constant character pointer pointing to the file name
	@return A vector containing the nodes
	**/
    vector<Node*> buildNodes(const char * filename)
   {
      FILE * file = fopen(filename, "r");
      if(file == NULL)
      {
         cout << "Error: File not found." << endl;
         exit(2);
      }
      string line = "";
      char current;
      vector<Node*> theNodes = vector<Node*>();
      while( (current = fgetc(file)) != EOF)
      {
         if(current != '\n')
            line = line + current;
         else
         {
            insertNodes(line, theNodes);
            line = "";
         }
      }
      fclose(file);
      return theNodes;
   }
   /**
		@brief Performs a topological sort on the tree
		*
		*The nodes on the vector comprise the tree.
		@param theNodes vector containing node pointers
		@return void
	**/
    void topologicalSort(vector<Node*> theNodes)
   {
      Node * temp = theNodes[0];
      string out = "";
      while(temp->getOutNodes().size() > 0)
      {
         vector<Node*> myNodes = temp->getInNodes();
         for(int x = 0; x < myNodes.size(); x++)
         {
            int pos = out.find(myNodes[x]->getName());
            if(pos != -1)
               continue;
            out = out + myNodes[x]->getName() + '\t';
         }
         out = out + temp->getName() + '\t';
         myNodes = temp->getOutNodes();
         temp = myNodes[0]; 
      }
      vector<Node*> myNodes = temp->getInNodes();
      for(int x = 0; x < myNodes.size(); x++)
      {
         int pos = out.find(myNodes[x]->getName());
         if(pos != -1)
            continue;
         out = out + myNodes[x]->getName() + '\t';
      }
      out = out + temp->getName();
      cout << out << endl;
   }
   /**
		@brief The main of the program. Takes filename provided by command-line argument, builds tree and performs topological sort
		@param argc The number of arguments
		@param **argv The command-line arguments represented as a double pointer to a character
		@return 0 Normal return value 
	**/
    int main (int argc, char **argv) 
   {
    // verify the correct number of parameters
      if ( argc != 2 ) {
         cout << "Must supply the input file name as the one and only parameter" << endl;
         exit(1);
      }
      string filename = argv[1];
      vector<Node*> theNodes = buildNodes(filename.c_str());
      topologicalSort(theNodes);
      return 0;
   }
