#!/bin/sh

for f in *.java; do java -ea  -jar ../../MJ.jar $f; done

echo "diff empty"
diff -u oracles/empty.java.ast.dot empty.java.myast.dot

echo "diff PA2bluedot"
diff -u oracles/PA2bluedot.java.ast.dot PA2bluedot.java.myast.dot

echo "diff PA3buttondot"
diff -u oracles/PA3buttondot.java.ast.dot PA3buttondot.java.myast.dot

echo "diff PA3Test1"
diff -u oracles/PA3Test1.java.ast.dot PA3Test1.java.myast.dot

echo "diff PA3Test2"
diff -u oracles/PA3Test2.java.ast.dot PA3Test2.java.myast.dot 

echo "diff PA3Test3"
diff -u oracles/PA3Test3.java.ast.dot PA3Test3.java.myast.dot

echo "diff PA4bluedot"
diff -u oracles/PA4bluedot.java.ast.dot PA4bluedot.java.myast.dot

echo "diff PA4MazeSolver"
diff -u oracles/PA4MazeSolver.java.ast.dot PA4MazeSolver.java.myast.dot

echo "diff PA4Test1"
diff -u oracles/PA4Test1.java.ast.dot PA4Test1.java.myast.dot

echo "diff PA4Test2"
diff -u oracles/PA4Test2.java.ast.dot PA4Test2.java.myast.dot

echo "diff PA4Test3"
diff -u oracles/PA4Test3.java.ast.dot PA4Test3.java.myast.dot

echo "diff test"
diff -u oracles/test.java.ast.dot test.java.myast.dot




