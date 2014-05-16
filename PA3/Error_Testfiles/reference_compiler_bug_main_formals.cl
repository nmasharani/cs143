-- as page 14 of the manual states, it is an error to give the method main formal parameters. 
-- in this test file, there are two errors. The first is redefining the method main. The
-- second is defining a method main with multiple parameters. The referece correcly
-- identifies that the method main is muliply defined, but does not catch the method
-- main with formal params. 

(*	
	Reference compiler does not specify that main should not have any arguments. 

corn09:~/cs143/PA3> /usr/class/cs143/bin/coolc -k ./Error_Testfiles/reference_compiler_bug_main_formals.cl
./Error_Testfiles/reference_compiler_bug_main_formals.cl:22: Method main is multiply defined.
Compilation halted due to static semantic errors.
semant returned error code: 1

*)

(* 
	We believe the correct output should be something along the lines of: 

corn09:~/cs143/PA3> ./mysemant ./Error_Testfiles/reference_compiler_bug_main_formals.cl 
./Error_Testfiles/reference_compiler_bug_main_formals.cl:12: 'main' method in class Main should have no arguments.
./Error_Testfiles/reference_compiler_bug_main_formals.cl:12: Method main is multiply defined.
Compilation halted due to static semantic errors.

*)

class Main {
	main() : Int 
	{
		42
	};
	main(x: Int) : Int {
		42
	};
};