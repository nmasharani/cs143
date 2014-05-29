class Main {
	io : IO;
	io1: IO <- new IO;
	main() : Object {
		if isvoid io then io1.out_string("good\n") else io1.out_string("bad\n") fi
	};
};