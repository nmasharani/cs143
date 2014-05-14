(*
 * Taken from cool manual section 7.6
 *
 * The predicate must have static type Bool. The body may have any static type. 
 * The static type of a loop expression is Object.
 *)


class Main { main() : SELF_TYPE { self }; };

class A {
	pred_not_bool() : Bool {
		{
			while "hi" loop 1 pool;
			true;
		}
	};

	invalid_body() : Bool {
		{
			while true loop new E pool;
			true;
		}
	};

	a : Object;
	b : Int;
	return_type_check() : Bool {
		{
			a <- while true loop 1 pool;
			b <- while true loop 1 pool;
			true;
		}
	};

};