class Main {
	x: Int <- 42;
	main() : Object {
		case 2 of
			five: Int => 5;
			andy: Andy => "oh baby!";
			str: String => "hello";
			io: IO => new IO;
		esac
	};
};

class Andy inherits IO {

};

class Mike inherits Andy {

};