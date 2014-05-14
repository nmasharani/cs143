(*
 * Taken from cool manual section 7.5
 * 
 * The predicate must have static type Bool. The branches may have any static 
 * types. Let T and F be the static types of the branches of the conditional. 
 * Then the static type of the conditional is lub(T, F).
 *)

class Main { main() : SELF_TYPE { self }; };

class A {
	a : Object;
	b : B;
	c : C;
	pred_not_bool() : Bool {
		{
			if "hi" then 1 else false fi;
			true;
		}
	};

	invalid_branch() : Bool {
		{
			if true then 1 else new E fi;
			true;
		}
	};

	check_lub() : Bool {
		{
			a <- if true then 1 else "str" fi;
			b <- if true then new C else new B fi;
			c <- if true then new C else new B fi;
			true;
		}
	};
};

class B {};
class C inherits B {};

