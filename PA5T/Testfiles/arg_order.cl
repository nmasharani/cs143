class Main {
	io : IO <- new IO;
	main() : Object {
		{
			test(io.out_string("first"), io.out_string("second"), io.out_string("third"));
			self.test(io.out_string("first"), io.out_string("second"), io.out_string("third"));
		}
		
	};
	test(x:Object, z: Object, y: Object) : Object {
		x
	};
};