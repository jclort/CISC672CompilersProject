Testing

In TestCasesMeggy/WorkingTestCases I have all my test cases. In the oracles/ folder I have the output of the reference compiler. I have two test scripts. ast-regress.sh compiles and compares the ast's of my compiler and the reference. asm-regress.sh compiles and runs my assembly on the simulator, then compares it to the output of the assembly of the reference compiler when it is run through the simulator.
Additionally, I have a lot of asserts throughout my visitors to confirm that the nodes I think I'm visiting are actually there, which is why I run my compiler with the -ea flag to enable assertions.

Approach
Symbol Table - I did mine a bit differently. I simply keep maps of scope, as a string, to a list of STE in that scope. There is a map of scope to VarSTE, scope to MethodSTE, and scope to ClassSTE. When I need something I just search in the appropriate list based on my scope.

In order to find the functions referenced by new expressions and this expressions, I make both of them class types, then keep a map of nodes to class names, so that if I come across one of them I can quickly resolve the name and set the search scope appropriately

I rewrote my code generator to leave the evaluation of all expressions in r24:25. This is much better than pushing and popping all of the time. 

Calling Convention - I visit the callexp or callstatement, and after visiting each argument push it to the stack. Then I save the old frame pointer and call the function. The callee does nothing. On return, I pop the frame pointer, then have a loop of pops based on the number of arguments for the function. This will save space for functions with lots of parameters and variables. The return value goes in r24:25.

Timeline
I don't remember the previous steps, but the code generation took about 7 hours to complete

Challenges
Biggest one was getting the offsets correct. Other minor ones were a bug in my else statement labels, making less than work properly, and accidentally overwriting values that I needed to save, which happened in the set pixel function since it has three arguments instead of two. 

The restricted instruction set of the compiler was annoying as well. Instead of doing my weird pop loop, it would have been easier to just subtract from the stack pointer.

The simulator is pretty bad because it doesn't have basic things like break points, which  would be a lot better than having to click through until I get to the bug each time
