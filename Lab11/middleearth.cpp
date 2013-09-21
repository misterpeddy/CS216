/**
   @file middleearth.cpp
   @author Michael Trotter (mjt5v)
   @date 4/22/08
   @brief The implementation of MiddleEarth
**/
#include "middleearth.h"

#include <algorithm>
#include <stdlib.h>
#include <math.h>

/** 
@var string all_city_names[]
@brief The list of all city names that we'll be using
 **/
   string all_city_names[] = {
   //dunedain cities
   "Bree", "Dol Amroth", "Fornost", "Isengard", "Minas Anor", "Minas Ithil", 
   "Minas Tirith", "Osgiliath", "Grey Havens", "Edoras", "Helm's Deep", //@}
   // dwarf cities
   "Khazad-dum", "Moria",
   // elvish cities
   "Lothlorien", "Rivendell",
   // hobbit cities
   "Buckleburry", "Bywater", "Hobbiton", "Michel Delving",
   // mordor cities
   "Durthang", "Orodruin", "Barad-Dur", "Minas Morgul", "Cirith Ungol", 
   "Dol Guldur",
   // places that are not cities
   "Emyn Muil", "Fanghorn Forest", "Dagorlad", "Gorgoroth", "Weathertop", 
   "Mirkwood Forest", "Erebor", "Entwash River",
   // END marker
   "END"
   };
// Iluvatar, the creator of Middle-Earth
    MiddleEarth::MiddleEarth (int xsize, int ysize, int num_cities, int seed) {
   // set up the random number seed
      srand( (seed==-1) ? time(NULL) : seed );
   
   // count the number of cities in the array
      for ( num_city_names = 0; all_city_names[num_city_names] != "END"; 
      num_city_names++ );
      if ( num_cities > num_city_names ) {
         cout << "There are only " << num_city_names << " city names, so " 
            << num_cities << " cities cannot be created.\nExiting." << endl;
         exit(0);
      }
      if ( num_cities < 5 )
         num_cities = 5;
   
   // select the num_cities names of the cities that we'll be using
      for ( int i = 0; all_city_names[i] != "END"; i++ )
         cities.push_back(string(all_city_names[i]));
      random_shuffle(cities.begin(), cities.end());
      cities.erase(cities.begin()+num_cities,cities.end());
   
   // compute random city positions
      for ( unsigned int i = 0; i < cities.size(); i++ ) {
         xpos.push_back((rand()/((float)RAND_MAX)) * xsize);
         ypos.push_back((rand()/((float)RAND_MAX)) * ysize);
      }
   
   // compute the 2-d distance array
      this->xsize = xsize;
      this->ysize = ysize;
      distances = new float[xsize*ysize]; // row-major order
      for ( int r = 0; r < num_cities; r++ )
         for ( int c = 0; c < num_cities; c++ ) {
            distances[r*xsize+c] = sqrt((xpos[c]-xpos[r])*(xpos[c]-xpos[r]) +
               (ypos[c]-ypos[r])*(ypos[c]-ypos[r]));
         }
   
   // create hash of indices so we don't have to do a linear search
   // each time we want to find a city name to index mapping
      for ( unsigned int i = 0; i < cities.size(); i++ )
         indices[cities[i]] = i;
   }

// Sauron, the destructor of Middle-Earth.
    MiddleEarth::~MiddleEarth () {
      delete[] distances;
   }

// prints out info on the created 'world'
    void MiddleEarth::print() {
      cout << "there are " << num_city_names 
         << " cities to choose from; we are using " << cities.size() << endl;
      cout << "they are: " << endl;
      for ( unsigned int i = 0; i < cities.size(); i++ )
         cout << "\t" << cities[i] << " @ (" << xpos[i] << ", " << ypos[i] 
            << ")" << endl;
   }

// prints a tab-separated table of the distances (this can be loaded
// into Excel or similar)
    void MiddleEarth::printTable() {
      cout << "Table: " << endl << endl << "City\txpos\typos\t";
      for ( unsigned int r = 0; r < cities.size(); r++ )
         cout << cities[r] << "\t";
      cout << endl;
      for ( unsigned int r = 0; r < cities.size(); r++ ) {
         cout << cities[r] << "\t" << xpos[r] << "\t" << ypos[r] << "\t";
         for ( unsigned int c = 0; c < cities.size(); c++ )
            cout << distances[r*xsize+c] << "\t";
         cout << endl;
      }
   }

// This method returns the distance between the two passed cities.  If
// we assume that the hash table (i.e. the map) is O(1), then this
// method call is also O(1)
    float MiddleEarth::getDistance (string city1, string city2) {
      return distances[indices[city1]*xsize+indices[city2]];
   }

// Returns the list of cities to travel to.  The first city is the
// original start point as well as the end point.  The number of
// cities passed in does not include this start/end point (so there
// will be length+1 entries in the returned vector).
    vector<string> MiddleEarth::getItinerary (unsigned int length) {
      length++; // to account for the start point
   
   // check parameter
      if ( length > cities.size() ) {
         cout << "You have requested a itinerary of " << length-1 
            << " cities; you cannot ask for an itinerary of more than length " 
            << cities.size()-1 << endl;
         exit(0);
      }
   
   // we need to make a deep copy of the cities vector.  itinerary is a
   // pointer so that it doesn't get deleted when it goes out of scope.
      vector<string> itinerary;
      for ( unsigned int i = 0; i < cities.size(); i++ )
         itinerary.push_back(cities[i]);
   
   // shuffle, erase unneeded ones, and return the itinerary
      random_shuffle(itinerary.begin(), itinerary.end());  
      itinerary.erase(itinerary.begin()+length,itinerary.end());
      return itinerary;
   }
