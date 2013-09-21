/*Michael Trotter
	mjt5v
	TreeNode.h
	*/
// TreeNode.h: TreeNode class definition
// CS 216: Lab 4


#ifndef TREENODE_H
#define TREENODE_H

#include <string>
using namespace std;

class TreeNode
{
public:
    TreeNode();						//Default Constructor
    TreeNode(const string & val);	//Constructor

private:
    string value;
    TreeNode *left, *right;			// for trees
    friend class TreeCalc;			//gives TreeCalc access to private data
};

#endif
