-- As page 8 of the manual specifies, an override of an inherited method is only valid if 
-- the number of arguments, and types match. 
-- In this test file, the program is attempting to redfine the method a in class A1 inherited
-- from class A. In this case, the error is that the number of formal parameters do not match. 
-- Furthermore, the return type of the redefined function is an error as the return types do not match.
-- The reference compiler correctly catches the return type error, but does not report on the 
-- number of arguments issue. 

(*	
	Reference compiler does not report the differing number of arguments error. 

corn09:~/cs143/PA3> /usr/class/cs143/bin/coolc -k ./Error_Testfiles/reference_compiler_missing_method_errors.cl 
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: In redefined method a, return type Bob is different from original return type Stevens.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:10: Undefined return type Stevens in method a.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: Class Some of formal parameter two is undefined.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: Class Other of formal parameter one is undefined.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: Undefined return type Bob in method a.
Compilation halted due to static semantic errors.
semant returned error code: 1


*)

(* 
	We believe the correct output should be something along the lines of: 

corn09:~/cs143/PA3> ./mysemant ./Error_Testfiles/reference_compiler_missing_method_errors.cl 
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: Incompatible number of formal parameters in redefined method a.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: In redefined method a, return type Bob is different from original return type Stevens.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:10: Undefined return type Stevens in method a.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: Class Some of formal parameter two is undefined.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: Class Other of formal parameter one is undefined.
./Error_Testfiles/reference_compiler_missing_method_errors.cl:16: Undefined return type Bob in method a.
Compilation halted due to static semantic errors.


*) 

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {
	a() : Stevens {
			self
	};
};

class A1 inherits A {
	a(two : Some, one : Other) : Bob {
		self
	};
};

