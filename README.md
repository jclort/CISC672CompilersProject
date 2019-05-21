# bscheibe-jclort-pa5

This is Jeffrey Lort and Bruce Scheibe's submission for PA5. Our file structure has all tests in the /Testing directory organized by project. PA3/PA4/PA5 test cases are in their respective subdirectories.

Running 'make' from /PA5 will produce an MJ.jar compiler and copy it, along with the MJSIM.jar and reference_compiler.jar, into all the testing subdiretories. Running 'make three' 'make four' or 'make five' will automatically run the MJ.jar compiler on all .java test cases in that subdirectory.

Our 'make clean' is updated to remove all .class files and the .jar files from the testing directories. 