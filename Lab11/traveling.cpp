/**
   @file travelling.cpp
   @author Michael Trotter (mjt5v)
   @date 4/22/08
   @brief An implementation of the travelling salesman problem
**/
#include <iostream>
#include <stdio.h>

using namespace std;

#include "middleearth.h"

float computeDistance (MiddleEarth &me, string start, vector<string> dests);
string printRoute (string start, vector<string> dests);
/**
   @brief The main of the program
   @param argc The number of supplied command line arguments
   @param argv A double pointer to a character containing the arguments
   @note The user ends to supply no more and no less than 5 additional arguments for the program (The first is the executable).
   @details <br><br> Assumes the parameters are well-formed after checking the number of parameters. <br> 
   Then, constructs the world of MiddleEarth from parameters. <br>
   Afterwards, constructs the iterinerary and removes the starting destination from the list <br>
   Finally, generates all permutations of the paths and keeps smallest one, which is printed to the console.           
 **/
int main (int argc, char **argv) {
  // check the number of parameters
  if ( argc != 6 ) {
    cout << "Usage: " << argv[0] << " <world_height> <world_width> "
	 << "<num_cities> <random_seed> <cities_to_visit>" << endl;
    exit(0);
  }
  // we'll assume the parameters are all well-formed
  int width, height, num_cities, rand_seed, cities_to_visit;
  sscanf (argv[1], "%d", &width);
  sscanf (argv[2], "%d", &height);
  sscanf (argv[3], "%d", &num_cities);
  sscanf (argv[4], "%d", &rand_seed);
  sscanf (argv[5], "%d", &cities_to_visit);

  // Create the world, and select your itinerary
  MiddleEarth me(width, height, num_cities, rand_seed);
  vector<string> dests = me.getItinerary(cities_to_visit);
  //YOUR CODE HERE
  //remove start
  string start = dests[0];
  vector<string>::iterator itr;
   itr = dests.begin();
   while(itr != dests.end())
     {
       if(*itr == start)
	 break;
       itr++;
     }
   dests.erase(itr);
   //Continually generates paths and keeps smallest
   sort(dests.begin(), dests.end());
   string smallestRoute = printRoute(start, dests);
   float smallestDistance = computeDistance(me, start, dests);
   do
     {
       if(computeDistance(me, start, dests) < smallestDistance)
	 {
	   smallestDistance = computeDistance(me, start, dests);
	   smallestRoute = printRoute(start, dests);
	 }
     }while(next_permutation(dests.begin(), dests.end()));
	    cout << "The shortest path was: " << smallestRoute << endl;
	    cout << "The total distance traveled was: " << smallestDistance << endl;
  return 0;
}
/**
   @brief Computes the full distance of the cycle
   @param me The instance of the MiddleEarth that contains all of the location data
   @param start The starting and ending location of the cycle
   @param dests The list of locations
   @return A float representing the total distance traveled in the cycle
   @note dests does not contain start
   @details <br><br> This method will compute the full distance of the cycle that starts at the 'start' parmater,
 <br> goes to each of the cities in the dests vector IN ORDER, and ends back at the 'start' parameter.
 **/
float computeDistance (MiddleEarth &me, string start, vector<string> dests) 
{
  // YOUR CODE HERE
   float distance = 0.0;
   distance = distance + me.getDistance(start, dests[0]);
   for(int x = 1; x < dests.size(); x++)
     distance = distance + me.getDistance(dests[x-1], dests[x]);
   distance = distance + me.getDistance(dests.back(), start);
   return distance;
}
/**
   @brief Records the entire route travelled
   @param start The starting/ending location in MiddleEarth
   @param dests A vector containing the locations that will be travelled through
   @return A string representing the route.
   @details <br> This method will print the entire route, starting and ending at the 'start' parameter.  
   @note The output should be of the form:
<br> Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor
 **/
string printRoute (string start, vector<string> dests)
 {
   string line = start + " -> ";
   for(int x = 0; x < dests.size(); x++)
     line = line + dests[x] + " -> ";
   line = line + start;
   return line;
 }
