-- top two cases are errors, bottom case is not an error. 

class A {
	a() : SELF_TYPE {
		42
	};
};

class A1 inherits A {
	a: A;
	a1() : A1 {
		a
	};
};

class A2 inherits A {
	a: A2;
	a2() : A {
		a
	};
};