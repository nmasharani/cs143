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
			case a1 of
				z: A2 => io.out_string("bad\n");
				w: Int => io.out_string("bad\n");
				q: A1 => case a2 of 
							w1: String => io.out_string("bad\n");
							q1: A1 => io.out_string("good\n");
							z: Int => io.out_string("bad\n"); 
							esac;
				b: Object => io.out_string("bad\n");
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