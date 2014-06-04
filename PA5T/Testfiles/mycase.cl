class Main {
	x: Int <- new Int;
	z: String <- "Good\n";
	io: IO <- new IO;
	main() : Object {
		{
			case new SELF_TYPE of
				one: String => io.out_string("good many\n");
				two: Int => {
					let two: String <- "redefined\n" in {
						io.out_string(two);
					}; 
				};
				three: Bool => io.out_string("Bad three\n");
				fourth: Main => io.out_string("Main\n");
			esac;

			case (new Bravo).alpha() of
				one: Alpha => io.out_string("Alpha\n");
				two: Int => {
					let two: String <- "redefined\n" in {
						io.out_string(two);
					}; 
				};
				three: Bravo => io.out_string("Bravo\n");
				fourth: Main => io.out_string("Main\n");
			esac;

			case (new Bravo) of
				one: Alpha => io.out_string("Alpha\n");
				two: Int => {
					let two: String <- "redefined\n" in {
						io.out_string(two);
					}; 
				};
				three: Bravo => io.out_string("Bravo\n");
				fourth: Main => io.out_string("Main\n");
			esac;
		}
		
	};
};

class Bravo {
	alpha() : Alpha {
		new Alpha
	};
};

class Alpha {

};