class Main {
	main() : Int {
		42
	};
};

class A {
	a(s: String) : Int {
		s.length()
	};
};

class A2 {
	a(s: String) : String {
		s.concat(s)
	};
};


class A3 {
	a(s: String, i: Int) : String {
		s.substr(i, i)
	};
};