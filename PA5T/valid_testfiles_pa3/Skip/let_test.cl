class Test {
	let_test() : Int {
		let x : Int <- 1, y : Int <- 2, z : Int <- 3 in (x + y + z)
	};

	nested_let_test() : Int {
		let x : Int <- 1 in let y : Int <- 2 in x + y
	};

	piazzaLet() : Int {
		let a : Int <- 1, b : Int <- 3 in a + b
	};
};