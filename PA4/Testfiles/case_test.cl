class Main {
	io : IO <- new IO;
	int : Int <- 3;
	bool : Bool <- true;
	string : String <- "hello";
	a : A <- new A;
	b : B <- new B;

	main() : SELF_TYPE {
		{
			case int of 
			x : Int => { io.out_string("hello, int! "); io.out_int(x); io.out_string("\n");};
			x : Bool => { io.out_string("hello, bool!"); io.out_string("\n");};
			x : String => { io.out_string("hello, string! "); io.out_string(string); io.out_string("\n");};
			x : A => { io.out_string("hello, A!"); io.out_string("\n");};
			x : B => { io.out_string("hello, B!"); io.out_string("\n");};
			esac;

			case bool of 
			x : Int => { io.out_string("hello, int! "); io.out_int(x); io.out_string("\n");};
			x : Bool => { io.out_string("hello, bool!"); io.out_string("\n");};
			x : String => { io.out_string("hello, string! "); io.out_string(string); io.out_string("\n");};
			x : A => { io.out_string("hello, A!"); io.out_string("\n");};
			x : B => { io.out_string("hello, B!"); io.out_string("\n");};
			esac;

			case string of 
			x : Int => { io.out_string("hello, int! "); io.out_int(x); io.out_string("\n");};
			x : Bool => { io.out_string("hello, bool!"); io.out_string("\n");};
			x : String => { io.out_string("hello, string! "); io.out_string(string); io.out_string("\n");};
			x : A => { io.out_string("hello, A!"); io.out_string("\n");};
			x : B => { io.out_string("hello, B!"); io.out_string("\n");};
			esac;

			case a of 
			x : Int => { io.out_string("hello, int! "); io.out_int(x); io.out_string("\n");};
			x : Bool => { io.out_string("hello, bool!"); io.out_string("\n");};
			x : String => { io.out_string("hello, string! "); io.out_string(string); io.out_string("\n");};
			x : A => { io.out_string("hello, A!"); io.out_string("\n");};
			x : B => { io.out_string("hello, B!"); io.out_string("\n");};
			esac;

			case b of 
			x : Int => { io.out_string("hello, int! "); io.out_int(x); io.out_string("\n");};
			x : Bool => { io.out_string("hello, bool!"); io.out_string("\n");};
			x : String => { io.out_string("hello, string! "); io.out_string(string); io.out_string("\n");};
			x : A => { io.out_string("hello, A!"); io.out_string("\n");};
			x : B => { io.out_string("hello, B!"); io.out_string("\n");};
			esac;

			case b of 
			x : Int => { io.out_string("hello, int! "); io.out_int(x); io.out_string("\n");};
			x : Bool => { io.out_string("hello, bool!"); io.out_string("\n");};
			x : String => { io.out_string("hello, string! "); io.out_string(string); io.out_string("\n");};
			x : A => { io.out_string("hello, A!"); io.out_string("\n");};
			esac;

			self;
		}
	};
};

class A {};
class B inherits A {};