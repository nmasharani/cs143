class Main {
	io : IO <- new IO;
	i : Int <- 50;
	a : Int <- 20;
	main() : Int {
		{
			{
				a <- let i : Int in {
					i <- new Int;
					io.out_int(i);
					io.out_string("\n");
					i;
				};
				io.out_int(i);
				io.out_string("\n");
				let i : Int <- 30 in {
					i <- let i : Int <- 7 in 5 + i;
					io.out_int(i);
					io.out_string("\n");
				};
				io.out_int(i);
				io.out_string("\n");
				i;
			};
			{
				let i : Int <- 2 in {
					io.out_int(i);
					io.out_string("\n");
					let i : Int <- 5 in {
						io.out_int(i);
						io.out_string("\n");
						let i : Int <- 3 in {
							io.out_int(i);
							io.out_string("\n");
							let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
							};
						};
					};
				};
			};
		}
	};
};