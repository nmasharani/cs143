* cannot inherit from multiple classes. *)

class Main {
	main() : Int {
		42
	};
};

class A2 {

};

class Bravo {

};

class A inherits Bravo A2{

};

class A3 inherits Zig Za {

};