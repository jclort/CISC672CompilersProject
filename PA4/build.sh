#!/bin/bash
make clean

make source
expect "Do you want to continue?" { send "\r" }
make all
echo "\n"
rm mj.java && rm sym.java
make all





