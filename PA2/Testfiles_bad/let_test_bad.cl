class Test {
	let_test() : Int {
		let x : Int <- , y : Int <- 2, z : Int <- 3 in (x + y + z)
	};

	nested_let_test() : Int {
		let x : Int <- 1 in let y : Int <- 2 in x + y
	};
};