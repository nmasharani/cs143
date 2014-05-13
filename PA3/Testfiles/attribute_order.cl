(*tests order of attributes.*)

class A {
	a: Int <- b + 5;
	b: Int <- 10;
};

class A2 inherits A {
	a2: Int <- a + b;
};