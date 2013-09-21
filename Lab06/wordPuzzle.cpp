/*
Michael Trotter
mjt5v
wordPuzzle.cpp
big-O running time is O(2^n)
*/
#include <fstream>
#include <iostream>
#include <string>
#include "hashTable.h"
#include "timer.h"

   using namespace std;
    bool isValidString(string line)
   {
      bool valid = true;
      for(int x = 0; x < line.length(); x++)
      {
         if((line[x] >= 65 && line[x] <= 90) || (line[x] >= 97 && line[x] <= 122))
            valid = true;
         else
         {
            valid = false;
            break;
         }
      }
      return valid;
   }
    HashTable buildHashTable(char* filename)
   {
      HashTable table = HashTable();
      string line;
      ifstream dict(filename);
      if(dict.is_open())
      {
         while(! dict.eof())
         {
            getline(dict, line);
            if(line.length() >= 3 && isValidString(line))
            {
               table.insert(line);
            }
         }
         dict.close();
         return table;
      }
      else
      {
         cout << "Dictionary file not found" << endl;
         exit(0);
      }
   }
    char** buildGrid(char* filename, int & x, int & y)
   {
      string line;
      ifstream grid(filename);
      if(grid.is_open())
      {
         getline(grid, line);
         x = atoi(line.c_str());
         getline(grid, line);
         y = atoi(line.c_str());
         char** array;
         array = new char*[x];
         for(int a = 0; a < x; a++)
            array[a] = new char[y];
         getline(grid, line);
         int index = 0;
         for(int a = 0; a < x; a++)
         {
            for(int b = 0; b < y; b++)
            {
               array[a][b] = line[index];
               index++;
            }
         }
         grid.close();
         return array;
      }
      else
      {
         cout << "Grid file not found" << endl;
         exit(0);
      }
   }
    string reverseString(string s)
   {
      char array[s.length()];
      for(int x = 0; x < s.length(); x++)
      {
         array[x] = s[s.length()-1-x];
      }
      return array;
   }
    int countRows(char**grid, HashTable table, int x, int y)
   {
      int count = 0;
      string line = "";
      for(int row = 0; row < x; row++)
      {
         for(int col = 0; col < y; col++)
            line = line + grid[row][col];
         for(int index = 0; index < line.length(); index++)
         {
            for(int end = 3; end <= line.length()-index; end++)
            {
               string sub = line.substr(index, end);
               if(table.contains((sub)))
               {
                  cout << "E (" << row << ", " << index << "): " << "\t" << sub << endl;
                  count++;
               }
               if(table.contains(reverseString(sub)))
               {
                  cout << "W (" << row << ", " << index << "): " << "\t" << reverseString(sub) << endl;
                  count++;
               }
            }     
         }
         line = "";
      }	 
      return count;
   }
    int countColumns(char**grid, HashTable table, int x, int y)
   {
      int count = 0;
      string line = "";
      for(int col = 0; col < y; col++)
      {
         for(int row = 0; row < x; row++)
            line = line + grid[row][col];
         for(int index = 0; index < line.length(); index++)
         {
            for(int end = 3; end <= line.length()-index; end++)
            {
               string sub = line.substr(index, end);
               if(table.contains((sub)))
               {
                  cout << "N (" << index << ", " << col << "): " << "\t" << sub << endl;
                  count++;
               }
               if(table.contains(reverseString(sub)))
               {
                  cout << "S (" << index << ", " << col << "): " << "\t" << reverseString(sub) << endl;
                  count++;
               }
            }     
         }
         line = "";
      }
      return count;
   }
    int countDiagonals1(char** grid, HashTable table, int x, int y)
   {
      int count = 0;
      string line = "";
      int row = 0;
      int r = row;
      int col = y-1;
      int c = col;
      while(col >= 0)
      {
         c = col;
         while(row < x && c < y)
         {
            line = line + grid[row][c];
            row++;
            c++;
         }
         for(int index = 0; index < line.length(); index++)
         {
            for(int end = 3; end <= line.length()-index; end++)
            {
               string sub = line.substr(index, end);
              
               if(table.contains((sub)))
               {
                  cout << "NW (" << index << ", " << line.length()-col << "): " << "\t" << sub << endl;
                  count++;
               }
               if(table.contains(reverseString(sub)))
               {
                  cout << "SE (" << index << ", " << line.length()-col << "): " << "\t" << reverseString(sub) << endl;
                  count++;
               }
            }     
         }
         line = "";
         row = 0;
         col--;
      }
      col = 0;
      row = 1;
      while(row < x)
      {
         r = row;
         while(r< x && col < y)
         {
            line = line + grid[r][col];
            r++;
            col++;
         }
         for(int index = 0; index < line.length(); index++)
         {
            for(int end = 3; end <= line.length()-index; end++)
            {
               string sub = line.substr(index, end);
              if(table.contains((sub)))
               {
                  cout << "NW (" << index << ", " << line.length()-col << "): " << "\t" << sub << endl;
                  count++;
               }
               if(table.contains(reverseString(sub)))
               {
                  cout << "SE (" << index << ", " << line.length()-col << "): " << "\t" << reverseString(sub) << endl;
                  count++;
               }
            }     
         }
         line = "";
         row++;
         col=0;
      }
      return count;
   }
    int countDiagonals2(char** grid, HashTable table, int x, int y)
   {
      int count = 0;
      string line = "";
      int row = 0;
      int r = row;
      int col = 0;
      int c = col;
      while(col < y)
      {
         c = col;
         while(row < x && c < y)
         {
            line = line + grid[row][c];
            row++;
            c--;
         }
         for(int index = 0; index < line.length(); index++)
         {
            for(int end = 3; end <= line.length()-index; end++)
            {
               string sub = line.substr(index, end);
               if(table.contains((sub)))
               {
                  cout << "NE (" << row << ", " << col << "): " << "\t" << sub << endl;
                  count++;
               }
               if(table.contains(reverseString(sub)))
               {
                  cout << "SW (" << row << ", " << col << "): " << "\t" << reverseString(sub) << endl;
                  count++;
               }
            }     
         }
         line = "";
         row = 0;
         col++;
      }
      row = 1;
      col = y-1;
      while(row < x)
      {
         r = row;
         while(r< x && col < y)
         {
            line = line + grid[r][col];
            r++;
            col--;
         }
         for(int index = 0; index < line.length(); index++)
         {
            for(int end = 3; end <= line.length()-index; end++)
            {
               string sub = line.substr(index, end);
                if(table.contains((sub)))
               {
                  cout << "NE (" << row << ", " << col << "): " << "\t" << sub << endl;
                  count++;
               }
               if(table.contains(reverseString(sub)))
               {
                  cout << "SW (" << row << ", " << col << "): " << "\t" << sub << endl;
                  count++;
               }
            }     
         }
         line = "";
         row++;
         col=y-1;
      }
      return count;
   }
    int countWords(char** grid, HashTable table, int x, int y)
   {
      int count = countRows(grid, table, x, y);
      count = count + countColumns(grid, table, x, y);
      count = count + countDiagonals1(grid, table, x, y);
      count = count + countDiagonals2(grid, table, x, y);
      return count;
   }
    int main()
   {
      char array[20];
      cout << "Please enter the filename of the dictionary." << endl;
      cin >> array;
      HashTable table = buildHashTable(array);
      cout << "Please enter the filename of the grid." << endl;
      cin >> array;
      int x = 0;
      int y = 0;
      char** grid = buildGrid(array, x, y);
     timer t;
   	t.start();
      cout << countWords(grid, table, x, y) << endl;
      t.stop();
   	cout << "Found all words in " << t << endl;
      return 0;
   }
