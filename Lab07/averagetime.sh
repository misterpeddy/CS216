#Michael Trotter
#mjt5v
#PostLab7
#averagetime.sh
#!/bin/sh
echo enter the number of times to iterate:
read MY_NUM
if [ $MY_NUM == quit ]
	then
		exit
fi
for i in 1 2 3 4 5
do
	echo Running iteration $i...
	echo time taken: `./a.exe $MY_NUM` ms
done
