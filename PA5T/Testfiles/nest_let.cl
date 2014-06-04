class Main {
	io: IO <- new IO;
	main () : Object {
		{
			let x: String <- "hell0\n" in 
				let z: String <- "Bye\n" in 
					let o:Int <- 5 in 
						let w: String <- "1\n" in 
						let w1: String <- "2\n" in 
						let w2: String <- "3\n" in 
						let w3: String <- "4\n" in 
						let w4: String <- "5\n" in 
						let w5: String <- "6\n" in 
						let w6: String <- "7\n" in 
						let w: String <- "8\n" in 
						let w7: String <- "9\n" in 
						let w8: String <- "10\n" in 
						let o: Int <- 42 in {
							io.out_string(x);
							io.out_string(z);
							io.out_int(o);
							io.out_string(w);
							io.out_string(w1);
							io.out_string(w2);
							io.out_string(w3);
							io.out_string(w4);
							io.out_string(w5);
							io.out_string(w6);
							io.out_string(w7);
							io.out_string(w8);
							io.out_string(w3);
						};		
		}
	};
};