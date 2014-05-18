-- This test file demonstrates an error in the reference compiler's annotation 
-- of the abstract syntax tree. In this file, in the last line of class B, 
-- the expression in the method g is an assignment to self of the value
-- returned by the method foo(). Note, the call of method foo() is dispatch. 
-- The declared return type of method foo() is SELF_TYPE. 
-- According to the typecheck rule on page 19 of the manual, when typechecking
-- dispatch, the type of the dispatch expression is set to the return type
-- of the method signature. However, there is a special case. As the 
-- last line of the typecheck rule indicates, if the declared return type
-- of the method signature is SELF_TYPE, then the type of the dispatch
-- expression is set to the T0, ie the type of the expression that invoked
-- the method. 

(*	
	When running the reference compiler with this file, the annotated AST for the 
	reference compiler indicates leaves the type of the expression node for the
	foo() dispatch as SELF_TYPE. According to the typecheck rule on page 19
	for dispatch, this is incorrect. It should indicate the type as B. 

*)

(* 
	The correct type for the foo() dispath expression node is B, not SELF_TYPE. 
	If you diff the PA3 submission for Pappas, Mashirani with the reference on this
	file, you will see the erroneous line in the reference compiler. 

*)

class Main {
	main() : Int {42};
};

class A {
       i: Int;
       b: Bool;
       x: SELF_TYPE;
       foo(): SELF_TYPE { x };
};
     
class B inherits A {
       y: SELF_TYPE;
       g(b: Object): Object { self = foo() };
       h() : Object {self = self@A.foo() };
};