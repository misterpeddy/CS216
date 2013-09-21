#include "hashTable.cpp"
#include <string>
   using namespace std;

    string reverseString(string s)
   {
      char array[s.length()];
      for(int x = 0; x < s.length(); x++)
      {
         array[x] = s[s.length()-1-x];
      }
      return array;
   }

    int main()
   {
      HashTable table = HashTable();
      string a = "alpha";
      string b = "beta";
      cout << a.compare(b) << endl;
      cout << table.insert("omega") << endl;
      bool contain = table.contains("omega");
      cout << contain << endl;
      table.insert("text");
   	table.insert("them");
   	contain = table.contains(reverseString("txet"));
   	cout << contain << endl;
      return 0;
   }