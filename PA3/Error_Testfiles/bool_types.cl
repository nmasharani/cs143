class A {
	y: String;
	z: Bool;
	a() : Bool {
		z <- (5 = y) < 42
	};
	a1() : Bool {
		z <- (5 <= y) = 42
	};

	a2() : Bool {
		z <- (5 = y) < 42
	};

	a3() : Bool {
		z <- (5 < y) <= 42
	};
};