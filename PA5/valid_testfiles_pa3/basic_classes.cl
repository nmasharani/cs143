class Main {
	main() : Int {
		42
	};
};

class A {
	a(s: String) : Object {
		s.length()
	};
};

class A2 {
	a(s: String) : Object {
		s.concat(s)
	};
};


class A3 {
	a(s: String, i: Int) : Object {
		s.substr(i, i)
	};
};