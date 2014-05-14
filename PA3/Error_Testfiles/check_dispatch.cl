class A {
	a(): Int {
		42
	};
};

class A2 {
	aa: A;
	a2() : Int {
		aa.a()
	};
};

class A3 {
	aa: A;
	x: Int;
	a2() : Int {
		aa.a(x)
	};
};