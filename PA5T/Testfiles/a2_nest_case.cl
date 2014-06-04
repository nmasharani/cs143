class Main {
	io: IO <- new IO;
	x: Int;
	z: Bool;
	w: String;
	a1: A1 <- new A1;
	a2: A2 <- new A2;
	a3: A3 <- new A3;
	main() : Object {
		{
			case 1 of 
			x: Int => case "hi" of 
					  s: String => case false of
					  				g: Bool => case g of 
					  							y: Bool => let s: String <- "good\n" in 
					  											case s of
					  												w: String => io.out_string(w);
					  												esac;
					  							esac;
					  				esac;
					  	esac;
			esac;

		}
	};
};

class A1 {

};

class A2 inherits A1 {

};

class A3 inherits A2 {

};