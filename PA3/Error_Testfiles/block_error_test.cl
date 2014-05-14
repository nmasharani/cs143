(*
 * Taken from cool manual section 7.7
 *
 * The expressions of a block may have any static types. The static type of a 
 * block is the static type of the last expression.
 *)


class Main { main() : SELF_TYPE { self }; };

class A {
	invalid_and_return_check() : Bool {
		{
			new E;
			true;
		}
	};

	inherit_check() : C {
		{
			new B;
		}
	};

	ok_inherit_check() : B {
		{
			new C;
		}
	};
};

class B {};
class C inherits B {};