#ifndef HASHTABLE_H
#define HASHTABLE_H

#include <string>
#include <vector>
   using namespace std;

    class HashTable
   {
   public:
      HashTable();
   
      bool contains(const string & x) const;
   
      void makeEmpty();
      bool insert(const string & x);
      bool remove(const string & x);
      int binarySearch(vector<string> list, int first, int last, string key) const;
   
   private:
      vector<vector<string> > theLists;
		int myhash(const string & x) const;
		void rehash();
   };
#endif
