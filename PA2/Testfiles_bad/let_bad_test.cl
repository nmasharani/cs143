(*
class Test {
	let_test() : Int {
		let x : Int <- {false; 1}, y : Int <- 2, z : Int <- 3 in (x + y + z)
	};

	nested_let_test() : Int {
		let x : Int <- 1 in let y : Int <- {2; 1} let z : Int <- 5 in x + y
	};
};
*)



(* If you run this configuration, the reference is incorrect, as the second feature is valid. *)

class Test {
	let_test() : Int {
		let x : Int <- {false; 1}, y : Int <- 2, z : Int <- 3 in (x + y + z)
	};

	nested_let_test() : Int {
		let x : Int <- 1 in let y : Int <- {2; 1;} in x + y
	};
};

