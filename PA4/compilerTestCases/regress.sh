#!/bin/sh

# usage: 
#   ./regress.sh

for filename in *.java
do
    echo "Regression testing MJ.jar $filename"

    # run the input file with the MJPA2 compiler
    java -jar ../MJ.jar $filename
	echo "Generating my output assembly file and simulating"
	java -jar ../MJSIM.jar -b -f $filename.s > myOutput
    java -jar ../MJ_PA2.jar $filename
	echo "Generating oracle assembly file and simulating"
	java -jar ../MJSIM.jar -b -f $filename.s > oracle
	echo "diffing simulator outputs"
	diff -u myOutput oracle
    echo "DONE with MJ.jar $filename"
    echo "============================="

done
rm *.dot
rm -r mjsimPictures

