class LetTest {
	(* here's a bunch of tests of terrible and non-terrible let stmts *)

	(* however, for reference, this first one is well formed *)
	test1() : Bool {
		let x : Int <- 1, y : Int <- 2 in 
			let z : Int <- 3 in (x + y + z) < 7
	};


};