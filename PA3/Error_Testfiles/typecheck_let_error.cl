class Main {
	main() : SELF_TYPE { self };
};

class A {
	q : Int;
	a() : Bool {
		{
			-- error
			let x : Int <- "hi" in x;
			-- no error
			let y : Int in y;
			let z : A <- self in z;
			-- error
			let self : SELF_TYPE in self;
			-- error
			(* reference compiler gives 2 errors here. 
			the first error is expected: no binding self
			the second error says SELF_TYPE doesn't conform to type of new A
			but that shoudl be okay because SELF_TYPE is the current class
			which is A. is that right? *)
			let self : SELF_TYPE <- new A in self;
			-- no error
			q <- let b : Int <- 5 in b;
			true;
		}
	};
};