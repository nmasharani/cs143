class Main {
	main() : Int {
		42
	};
};

class A {
	x: IO;
	z: Object;
	a(s: String) : String {
		x.out_string(s)
	};
	pa(s: Int) : String {
		x.out_int(s)
	};
	a2a(s: String) : String {
		x.in_string()
	};
	
	aa3a(s: String) : String {
		x.in_int()
	};

	aa1() : Int {
		z.abort()
	};
	a2() : String {
		z.type_name()
	};
	a3() : Object {
		z.copy()
	};
};