class Main {
	io: IO <- new IO;
	x: Int;
	z: Bool;
	w: String;
	a1: A1 <- new A2;
	a2: A2 <- new A2;
	a3: A3 <- new A3;
	main() : Object {
		{
			case a1 of 
				x: A1 => x.print();
				w: A2 => w.print();
				z: A3 => z.print();
			esac;
			let a1: A1 <- new A3 in 
				case a1 of 
					x: A1 => x.print();
					w: A2 => w.print();
					z: A3 => z.print();
				esac;

		}
	};
};

class A1 {
	io: IO <- new IO;
	print() : Object {
		io.out_string("A1\n")
	};
};

class A2 inherits A1 {
	print() : Object {
		io.out_string("A2\n")
	};
};

class A3 inherits A2 {
	print() : Object {
		io.out_string("A3\n")
	};
};