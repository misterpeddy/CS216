#include "hashTable.h"
#include <iostream>
    HashTable::HashTable()
   {
      theLists = vector<vector<string> >(52);
   }
     
    int HashTable::myhash(const string & x) const
   {
      if(x[0] <= 90)
         return x[0] - 65;
      else
         return x[0] - 97 + 26;
   }
   
    int HashTable::binarySearch(vector<string> list, int first, int last, string key) const
   {
      while(first <= last)
      {
         int middle = (first+last)/2;
         if(key.compare(list[middle]) > 0)
            first = middle+1;
         else if(key.compare(list[middle]) < 0)
            last = middle-1;
         else
            return middle;
      }
      return -1;
   }
    void HashTable::makeEmpty()
   {
      for(int x = 0; x < theLists.size(); x++)
         theLists[x].clear();
   }
    bool HashTable::contains(const string & x) const
   {
      int pos = myhash(x);
      if(theLists.size() < pos)
         return false;
      else
      {
         vector<string> list = theLists[pos];
         pos = binarySearch(list, 0, list.size()-1, x);	
         return pos != -1;			
      }
   }
    void HashTable::rehash()
   {
      theLists.resize(theLists.size()+1);
   }
    bool HashTable::insert(const string & x)
   {
      int startPos = myhash(x);
      if(startPos >= theLists.size())
      {
         rehash();
         theLists[startPos].clear();
			 theLists[startPos].push_back(x);
            return true;
      }
      else
      {
         if(binarySearch(theLists[startPos], 0, theLists[startPos].size()-1, x) != -1)
            return false;
         else
         {
            theLists[startPos].push_back(x);
            return true;
         }
      }
   }
    bool HashTable::remove(const string & x)
   {
      int startPos = myhash(x);
      if(startPos >= theLists.size())
         return false;
      else
      {
         vector<string> list = theLists[startPos];
         int pos = binarySearch(list, 0, list.size()-1, x);
         if(pos == -1)
            return false;
         else
         {
            vector<string>::iterator itr;
            itr = list.begin();
            itr+pos;
            list.erase(itr);
            return true;
         }
      }	
   }
