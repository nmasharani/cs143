(*Tests nested let statments to ensure that precendence and binding are correct.*)

class Main {
	main() : Int {
		let x : Int <- 5 in let y : String <- "Garko" in let z : Int <- 42 in (x + ~6 + z)
	};
	follow(x: String) : Int {
		let x : Int <- 5 in (let y : String <- "Garko" in (let z : Int <- 42 in (x + ~6 + z)))
	};
};