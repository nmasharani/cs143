(* This is a basic test file to see how things are called with inhertance. *)

class Main {
	a(b : Int, b : Int) : Int {
		case b of
			y: Int => 5;
			x: String => 6;
		esac
	};
	a : Int;
	a : Int;


	main() : SELF_TYPE {
		self
	};
};

(*
class Test {
	a(b : Int) : Int {
		case b of 
		a : Int => a + b;
		esac
	};
	a : Int;

	main() : SELF_TYPE {
		self
	};
};
*)