/**
   @file middleearth.h
   @header middleearth.h
   @author Michael Trotter (mjt5v)
   @data 4/22/08
   @brief The header file containing the MiddleEarth specfication
 **/
#include <iostream>
#include <vector>
#include <string>
#include <map>

using namespace std;

// see the comments in the lab11 write-up, or in middleearth.cpp
/**
   @class MiddleEarth
   @brief A 2D array representing the cities in MiddleEarth and processes the data contained therein 
 **/
class MiddleEarth {
private:
  int num_city_names, xsize, ysize;
  vector<float> xpos, ypos;
  vector<string> cities;
  float *distances;
  map<string, int> indices;
  
public:
/**
	@brief Constructor for Middle-Earth
	@details Constructs a 2-d array representing Middle-Earth based on parameters
	@param xsize Defines row dimension for 2-d array
	@param ysize Defines column dimension for 2-d array
	@param numcities Defines the number of cities to be entered into the 2-d array
	@param seed Defines the seed for the random number generator
	@note There cannot be more than 33 cities specified.
**/
  MiddleEarth (int xsize, int ysize, int numcities, int seed);
/**
	@brief Destructor for Middle-Earth
	@details Deletes the 2-d array representing Middle-Earth
**/
  ~MiddleEarth();
 /**
 	@brief  Prints out info on the created 'world'
	@details Prints out the number of the number of possible cities to choose from and the number of cities chosen
				\n In addition, prints out the cities themselves
	@return void
 **/
  void print();
  /**
  @brief  Prints a tab-separated table of the distances
  @note This can be loaded into Excel or similar spreadsheet program
  @return void
  **/
  void printTable();
  /**
  @brief Returns the distance between the two passed cities
  @note  If we assume that the hash table (i.e. the map) is O(1), then this method call is also O(1)
  @return A float representing the distance between the cities
  **/
  float getDistance (string city1, string city2);
  /**
  @brief Returns the list of cities to travel to
  @details The first city is the original start point as well as the end point.  
  @note The number of cities passed in does not include this start/end point (so there will be length+1 entries in the returned vector).
  @return A vector of string representing the cities
  **/
  vector<string> getItinerary(unsigned int length);
};
