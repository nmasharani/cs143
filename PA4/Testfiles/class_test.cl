class Main { main(): SELF_TYPE { self }; };
class A { 
	one(): Int {1};
	two(): Int {2};
};

class B inherits A {
	three(): Int{3};
	one(): Int{4};
	four(): Int{4};
};

class C inherits B {
	four(): Int{5};
};
