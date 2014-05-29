class Main {
	a1: A1 <- new A1;
	main() : Object {
		a1.print()
	};
};

class A1 {
	s: String <- "In A1";
	io : IO <- new IO;
	print() : Object {
		{
			let z: SELF_TYPE <- new SELF_TYPE in 
				io.out_string(s);
		}
	};
};