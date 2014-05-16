class Bravo {};

class Echo {};

class Zulu {};

class Tango {};


class Lima {
	b: Bravo;
	e: Echo;
	z: Zulu;
	t: Tango;
	s: SELF_TYPE;


	q() : Bool {
		-- no error
		b = e
	};

	q1() : Bool {
		-- no error
		b = z
	};
	q2() : Bool {
		-- no error
		b = b
	};

	q3() : Bool {
		-- no error
		b = z
	};
	q4() : Bool {
		-- no error
		b = t
	};
	q5() : Bool {
		-- no error
		t = e
	};
	q6() : Bool {
		-- no error
		b = self
	};
	q7() : Bool {
		-- no error
		b = s
	};

	q8() : Bool {
		-- no error
		s = e
	};

	q9() : Bool {
		-- no error
		s = s
	};

	q10() : Bool {
		-- no error
		self = e
	};
};


class A {
	y: String;
	y1: String;

	x: Int;
	x1: Int;

	z: Bool;
	z1: Bool;

	a() : Bool {
		-- no error
		y = y1
	};
	a1() : Bool {
		-- no error
		x = x1
	};
	a2() : Bool {
		-- no error
		z = z1
	};
	a3() : Bool {
		-- error
		x = y
	};
	a4() : Bool {
		-- error
		z = y
	};
	a5() : Bool {
		-- error
		x = z
	};
};