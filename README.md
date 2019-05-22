# bscheibe-jclort-pa5

This is Jeffrey Lort and Bruce Scheibe's submission for PA5. Our file structure has all tests in the /Testing directory organized by project. PA3/PA4/PA5 test cases are in their respective subdirectories.

Running 'make' from /PA5 will produce an MJ.jar compiler and copy it, along with the MJSIM.jar and reference_compiler.jar, into all the testing subdiretories. Running 'make three' 'make four' or 'make five' will automatically run the MJ.jar compiler on all .java test cases in that subdirectory.

Our 'make clean' is updated to remove all .class files and the .jar files from the testing directories. 

Joint Project Report: 

	Going into this project, we didn’t have much of a set plan for how and when work should be done. In reality, we ended up meeting for a few hours a day over the course of several days and getting the work done side-by-side. 

	Testing was to be accomplished using the given test files from PA1 and PA5, executing them using a customized Makefile, and then running those on the provided MJSIM.jar to test outputs once we had a workable assembly generator. The reality was a fairly straightforward extension of an existing PA4 file structure and Makefile to accommodate PA5 test cases. 

	The timeline for the project was as follows: the first day we talked over the project in order to understand what needed to be done, and filled out the grammar to accommodate PA5 features. The next two days that we met, we worked on the symbol table construction by using what was lacking in the type checker to know what features needed to be added. The fourth day we finished up the ST and typechecker, and began on code generation. The fifth day was spent focusing on code generation and making testing as thorough and straightforward as possible. 

	Our meeting schedule was a very consistent 1:00 PM on all the days that we met, for every day except a single day since we began working on the project. 