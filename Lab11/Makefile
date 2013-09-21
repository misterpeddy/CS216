#Michael Trotter
#mjt5v
#Makefile
GXX=g++
DEBUG=-Wall -g
LINK=-c
SPEED=-O2

traveling: traveling.o middleearth.o
	$(GXX) $(SPEED) traveling.o middleearth.o	
middleearth.o: middleearth.cpp
	$(GXX) $(LINK) middleearth.cpp
clean:
	-rm *.o a.exe