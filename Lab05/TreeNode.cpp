/*Michael Trotter
	mjt5v
	TreeNode.cpp
	*/
// Insert your header information here
// TreeNode.cpp:  Tree Node method implementations
// CS 216: Lab 4

#include "TreeNode.h"

//Default Constructor -left and right are NULL, value '?'
TreeNode::TreeNode()
{
    value="?";
    left=NULL;
    right=NULL;
}

//Constructor - sets value to val
TreeNode::TreeNode(const string & val)
{
    value=val;
    left=NULL;
    right=NULL;
}
