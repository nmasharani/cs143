class Main {
	io : IO <- new IO;
	int : Int <- 3;
	bool : Bool <- true;
	string : String <- "hello";
	a : A <- new A;
	b : B <- new B;
}

class A {};
class B inherits A {};