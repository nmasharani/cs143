class Main {
	test1: Test <- new Test;
	test2: Test2 <- new Test2;
	main() : Object {
		{
			test1.test_method();
			test2.test_method();
		}
	};
};

class Test {
	test_method() : Int {
		let x:Int <- 1, y:Int <- 2, z:Int <- 3 in (x + y + z)
	};
};



class Test2 {
	test_method() : Int {
		let x:Int <- 1 in (x)
	};
};