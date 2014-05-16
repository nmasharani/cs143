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
	a3a(s: String) : String {
		x.in_int(s)
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

class Bravo {
	s: String;

	a() : Int {
		s.length()
	};
	a2() : String {
		s.length()
	};
	a3() : String {
		s.concat(s)
	};
	a4(x: Int, s: Int) : String {
		s.length()
	};
	a9(x: Int, s: String) : String {
		s.concat(x)
	};
	a5(x: Int, s: Int, z: String) : String {
		z.substr(i, x)
	};
	a6(x: Int, s: Int, z: String) : String {
		z.substr(s, x)
	};

};



