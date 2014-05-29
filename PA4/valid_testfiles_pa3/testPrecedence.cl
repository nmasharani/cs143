class Main {
	x: Int;
	ana(): Int {
		(let x:Int <- 1 in 2)+3
	};
	prec(): Int {
		x <- (1 + 2 * 4 / 5 * 6 / 7 - 2 * 7)
	};
	main() : Object {
		{
			ana();
			prec();
		}
		
	};
};