#! /bin/bash
find ~/Desktop/../ -iname $1 > loc 
#find the location in Desktop/.. of name given as parameter and save it in loc file
tail -1 loc > loc1 #copy the last line to another file
v1=$(<loc1) #data of loc is copied to variable
grep -n 7 $v1 #to find out the data "7" tell line no and times of appearance  
#rm -f loc loc1 #deleting unuseful file loc

