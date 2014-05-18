-- As the manual indicates on page 8, in an override of a method, the number
-- of arguments, and argument types must match in the inherited method def
-- and redefined method def. This test file demonstrates that the reference
-- correctly catches and reports the first instance of a type mismatch
-- in this situation, but does not report subsequent type mismatches. 
-- Specifically, in the redefinition of method a, both of paramters
-- in the method redefinition conflict with the original parameters, and both
-- should be reported. 

(*	
	Reference compiler does not report second parameter type error. 

corn09:~/cs143/PA3> /usr/class/cs143/bin/coolc -k ./Error_Testfiles/reference_compiler_missing_formal_types.cl
./Error_Testfiles/reference_compiler_missing_formal_types.cl:22: In redefined method a, parameter type Int is different from original type String
./Error_Testfiles/reference_compiler_missing_formal_types.cl:16: Inferred return type SELF_TYPE of method a does not conform to declared return type Int.
./Error_Testfiles/reference_compiler_missing_formal_types.cl:22: Inferred return type SELF_TYPE of method a does not conform to declared return type Int.
Compilation halted due to static semantic errors.
semant returned error code: 1

*)

(* 
	We believe the correct output should be something along the lines of: 

corn09:~/cs143/PA3> ./mysemant ./Error_Testfiles/reference_compiler_missing_formal_types.cl
./Error_Testfiles/reference_compiler_missing_formal_types.cl:22: In redefined method a, parameter 'x' of type Int is different from original type String.
./Error_Testfiles/reference_compiler_missing_formal_types.cl:22: In redefined method a, parameter 'some' of type String is different from original type Bool.
./Error_Testfiles/reference_compiler_missing_formal_types.cl:16: Inferred return type SELF_TYPE of method a does not conform to declared return type Int.
./Error_Testfiles/reference_compiler_missing_formal_types.cl:22: Inferred return type SELF_TYPE of method a does not conform to declared return type Int.
Compilation halted due to static semantic errors.


*)

(* Test errors in methods. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {
	a(z: String, y: Bool) : Int {
			self
	};
};

class Inter inherits A {
	a(x: Int, some: String) : Int {
		self
	};
};
