#!/bin/sh
for f in  *.java; do 
	java -ea -jar ../../MJ.jar $f
	wc -l $f.s 
    java -jar ../MJSIM.jar -b -f $f.s > t1
    java -jar ../MJSIM.jar -b -f ./oracles/$f.s > t2
    diff -u t1 t2
    rm t1 && rm t2


done



