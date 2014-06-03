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

class Main {
	x: Int <- 42;
	y: Object <- x;
	z: Object <- y.copy();
	io: IO <- new IO;
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
			};
		}
	};
};