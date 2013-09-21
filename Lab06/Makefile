#Michael Trotter
#mjt5v
#Makefile
GXX=g++
DEBUG=-Wall -g

wordPuzzle: wordPuzzle.o hashTable.o timer.o
	$(GXX) $(DEBUG) wordPuzzle.o hashTable.o timer.o -o wordPuzzle
	
wordPuzzle.o: wordPuzzle.cpp
	$(GXX) -c wordPuzzle.cpp

timer.o: timer.cpp timer.h
	$(GXX) -c timer.cpp
	
hashTable.o: hashTable.cpp hashTable.h
	$(GXX) -c hashTable.cpp
	
	
clean:
	-rm *.o pizza.exe