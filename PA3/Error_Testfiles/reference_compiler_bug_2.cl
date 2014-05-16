-- in this test case, the main is defined in class Main. The error is the mismatch on redeclared arguments. 
-- however, the reference outputs No 'main' method in class Main. Based on the information in section
-- 9 on page 14 of the manual, this should not be the output, as main is defined in the class Main. 

(*
	Reference output incorrectly outputs that there is no main method defined. 

corn09:~/cs143/PA3> /usr/class/cs143/bin/coolc -k ./Error_Testfiles/reference_compiler_bug_2.cl 
./Error_Testfiles/reference_compiler_bug_2.cl:15: Incompatible number of formal parameters in redefined method main.
./Error_Testfiles/reference_compiler_bug_2.cl:14: No 'main' method in class Main.
Compilation halted due to static semantic errors.
semant returned error code: 1

*)

(*
	We believe the correct output should be something along the lines of:

corn09:~/cs143/PA3> ./mysemant ./Error_Testfiles/reference_compiler_bug_2.cl 
./Error_Testfiles/reference_compiler_bug_2.cl:6: Incompatible number of formal parameters in redefined method main.
Compilation halted due to static semantic errors.

*)

class Main inherits A {
	main() : Int {
		42
	};
};

class A {
	main(x: Int) : Int {
		42
	};
};