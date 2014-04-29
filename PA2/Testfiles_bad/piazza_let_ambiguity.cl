(*Test taken from piazza. Tests let statement abmbiguity. Contains an error in trailing method*)

class Test {
	let_test() : Int {
		let a : Int in 1 + 2
	};
	trail(z:String <- "Error") : String {
		z
	};
};
