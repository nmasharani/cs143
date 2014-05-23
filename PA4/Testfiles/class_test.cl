class Main { main(): SELF_TYPE { self }; };
class A { 
	a : Int;
	b : Int;
	one(): Int {1};
	two(): Int {2};
};

class B inherits A {
	c : Int;
	three(): Int{3};
	one(): Int{4};
	four(): Int{4};
};

class C inherits B {
	d : Int;
	four(): Int{5};
};
