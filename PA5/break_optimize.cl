-- assign integers to variables of type object. Then invoke the object methods. for example:
-- y: Object <- 42; y.copy(), y.abort(), y.typename()
-- Invoke the inherited methods on ints, for example:
-- x: Int <- 42; x.copy(), x.abort(), x.typename()
-- Do this for all forms of declerations. 1. Attributes of classes. 2. Let statements 3. Case statements 4. Method Parameters
-- Then
-- Do the same thing for the BOOL type, because people might unbox bools as well.
-- excersise the int operations. Nest these operations in long expressions. 
-- Then
-- Test for register allocation. Nest let expressions very long. Nest cases within one another. 
-- Excersise the edge cases. 1. Return ints/bools from methods 2. Excersise the new operator

-- Perform method calls on built in objects that have strings as fields
-- do some funny stuff with negative numbers, because those are hard

class Main {
	x: Int <- 42;
	y: Object <- x;
	z: Object <- y.copy();
	io: IO <- new IO;
	s : String <- "this is a string";

	main() : Object {
		{
			io.out_int(x);
			let z: Int<- 42, w: Object <- new Object in {
				w <- z;
				w.copy();
				z.copy();
				io.out_int(z);
				case 42 of 
					q: Object => io.out_int(x);
					w: Int => io.out_int(w);
				esac;
				io.out_string("\n");

				case y of 
					q: Object => io.out_int(1);
					w: Int => io.out_int(2);
				esac;
				io.out_string("\n");

				io.out_string(s.concat("\n"));
				io.out_int(~x);
				io.out_string("\n");
				io.out_string(s.substr(1, 3).concat("\n"));
				-- i think the reference compiler gets this wrong?
				-- should be -42/-1 + -3*-2 = 48
				x <- (~x / ~1) + (~3 * ~2);
				io.out_int(x);
				io.out_string("\n");
			};
		}
	};
};

