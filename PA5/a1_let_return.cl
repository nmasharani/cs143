class Main {
	io: IO <- new IO;
	main() : Object {
		io.out_string(let x: Int in x.type_name())
	};
};