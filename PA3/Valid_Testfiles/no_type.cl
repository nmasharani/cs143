class Main { main() : SELF_TYPE { self }; };

class A {
	a() : Bool {
		{
			let a : Int in a;
			true;
		}
	};
};