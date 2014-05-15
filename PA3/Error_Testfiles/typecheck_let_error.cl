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
			q <- let self : SELF_TYPE <- new A in self;
			-- no error
			q <- let b : Int <- 5 in b;
			let self : SELF_TYPE, b : Bool <- true in b;
		}
	};
};