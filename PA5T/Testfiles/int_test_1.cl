class Main inherits IO {
	z : Int <- 5;
	main() : Object {
		{
			out_int(z);
			out_string("\n");
			out_int(5);
			out_string("\n");
			let a : A <- new A in {
				out_string(a.get_self().get_b());
				out_string("\n");
			};
		}
	};
};

class A {
	b : String <- "hello";
	get_self() : A {
		new A
	};

	get_b() : String {
		b
	};
};