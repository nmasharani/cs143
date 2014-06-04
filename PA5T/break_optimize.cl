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
	w: Int <- 72;
	s : String <- "this is a string";
	z1: Int <- (x + w / x / x / w * 1 + 45 / 2 - 56 + 1 - (~1) * 43 * 6 / (~2) + x + w - (~w));

	a1: A1 <- new A1;
	a2: A2 <- new A2;
	a3: A3 <- new A3;
	comp : Comp <- new Comp;
	billy : Billy <- new Billy;
	letter : Letter <- new Letter;
	main() : Object {
		{
			io.out_int(x);
			io.out_int(z1);
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
				
				io.out_string(s.concat("\n"));
				io.out_int(~x);
				io.out_string("\n");
				io.out_string(s.substr(1, 3).concat("\n"));
				io.out_int(~x);
				io.out_string("\n");
				-- i think the reference compiler gets this wrong?
				-- should be -42/-1 + -3*-2 = 48
				io.out_string("This should be 48 but it is: \n");
				x <- (~x / ~1) + (~3 * ~2);
				io.out_int(x);
				io.out_string("\n");
				io.out_string("This should be 42 but it is: \n");
				io.out_int(~42/~1); --this should be 42
				io.out_string("\n"); 
				io.out_string("This should be 6 and it is: \n");
				io.out_int(~3 * ~2); --this should be 6
				io.out_string("\n");
				a(42, new Object, true);
				x <- make_int(new Int);
				io.out_int(x);
				io.out_string(s.substr(x, x));
				long();
				nest_case();
				long_int(new Int);
				long_int(100);
				long_int(111111111111111111111);
				comp.excersise();
				billy.billy();
				args(z1, false, new Object);
				args(47, true, new Object);
				args(49, true, new Int);
				args(49, true, new Bool);
				args(new Int, new Bool, new Bool);
				caser(new Int, new Bool);
				caser(72, false);
				caser(77, true);
				letter.letter();
			};
		}
	};

	caser(x: Int, b: Bool) : Object {
		{
			case x of
				x: Int => io.out_string("hello");
				b: Bool => io.out_string("jume");
			esac;
			case 102 of
				x: Int => io.out_string("hello");
				b: Bool => io.out_string("jume");
			esac;
		}
	};

	args(x: Int, b: Bool, y: Object) : Object {
		{
			io.out_int(x);
			io.out_string(x.type_name());
			y <- x;
			io.out_string(y.type_name());
			y <- x.copy();
			io.out_string(y.type_name());
			io.out_string(b.type_name());
			b <- b.copy();
			io.out_string(b.type_name());
		}
	};

	a(x: Int, y: Object, b: Bool) : Object {
		{
			io.out_int(x);
			io.out_string(y.type_name());
			io.out_string(b.type_name());
			if b then io.out_int(x + 5) else io.out_int(x + ~7) fi;
			if not b then io.out_int(x + 5) else io.out_int(x + ~7) fi;
			x <- x.copy();
			io.out_string(x.type_name());
		}
	};

	make_int(x : Int) : Int {
		{
			io.out_string(x.type_name());
			io.out_int(x);
			x <- ~x + 7 + 8 / ~4 * x + x * x * x / 89;
			io.out_int(x);
			x <- 1;
		}
	};

	long() : Object {
		{
			io.out_int(z1);
			let w : Int <- 4 in 
				io.out_int(w);
		}
	};

	nest_case() : Object {
		{
			case 1 of 
			x: Int => case "hi" of 
					  s: String => case false of
					  				g: Bool => case g of 
					  							y: Bool => let s: String <- "good\n" in 
					  											case s of
					  												w: String => io.out_string(w);
					  												esac;
					  							esac;
					  				esac;
					  	esac;
			esac;

		}
	};

	long_int(y: Int) : Object {
		{
			y<- 55;
			io.out_int(y);
			let w : Int <- (x + y / x / x / y * 1 + z1 / 2 - 56 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y) + x + y / x / y / y * 1 + 45 / 2 - 563 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y)) in 
				io.out_int(w);
				let q: Object <- w, x: Int in {
					io.out_string(q.type_name());
					x<- w.copy();
					io.out_string(x.type_name());
					io.out_int(x);
				};
		}
	};


};


class Comp {
	x: Int;
	z: Int;
	w: Int <- 3;
	w1: Int <- 5;
	s: String <- "hello";
	s1: String;
	s2: String <- "Yo";
	b: Bool <- false;
	b1: Bool <- true;	
	b2: Bool;
	a1: A1 <- new A1;
	a: A1;
	a2: A2 <- new A2;
	a2a: A2;
	y: A1;
	y1 : SELF_TYPE;
	io: IO <- new IO;
	excersise() : Object {
		{
			if x < z then io.out_string("1") else io.out_string("2") fi;
			if z < x then io.out_string("1") else io.out_string("2") fi;
			if x < x then io.out_string("1") else io.out_string("2") fi;
			if z < z then io.out_string("1") else io.out_string("2") fi;
			if w < z then io.out_string("1") else io.out_string("2") fi;
			if x < w then io.out_string("1") else io.out_string("2") fi;
			if w < w then io.out_string("1") else io.out_string("2") fi;
			if x <= z then io.out_string("1") else io.out_string("2") fi;
			if x <= w then io.out_string("1") else io.out_string("2") fi;
			if w <= z then io.out_string("1") else io.out_string("2") fi;
			if x <= x then io.out_string("1") else io.out_string("2") fi;
			if w <= w then io.out_string("1") else io.out_string("2") fi;
			if x = z then io.out_string("1") else io.out_string("2") fi;
			if w = z then io.out_string("1") else io.out_string("2") fi;
			if x = w then io.out_string("1") else io.out_string("2") fi;
			if x = x then io.out_string("1") else io.out_string("2") fi;
			if w = w then io.out_string("1") else io.out_string("2") fi;
			if s2 = s then io.out_string("1") else io.out_string("2") fi;
			if s2 = s1 then io.out_string("1") else io.out_string("2") fi;
			if s2 = s2 then io.out_string("1") else io.out_string("2") fi;
			if s = s then io.out_string("1") else io.out_string("2") fi;
			if s1 = s1 then io.out_string("1") else io.out_string("2") fi;
			if s = s1 then io.out_string("1") else io.out_string("2") fi;
			if s1 = s1 then io.out_string("1") else io.out_string("2") fi;
			if b1 = b1 then io.out_string("1") else io.out_string("2") fi;
			if b2 = b1 then io.out_string("1") else io.out_string("2") fi;
			if b1 = b2 then io.out_string("1") else io.out_string("2") fi;
			if b2 = b2 then io.out_string("1") else io.out_string("2") fi;
			if b = b1 then io.out_string("1") else io.out_string("2") fi;
			if b1 = b then io.out_string("1") else io.out_string("2") fi;
			if b2 = b then io.out_string("1") else io.out_string("2") fi;
			if b = b then io.out_string("1") else io.out_string("2") fi;
			if b = b2 then io.out_string("1") else io.out_string("2") fi;
			if a1 = a1 then io.out_string("1") else io.out_string("2") fi;
			if a = a1 then io.out_string("1") else io.out_string("2") fi;
			if a2 = a1 then io.out_string("1") else io.out_string("2") fi;
			if a = a2 then io.out_string("1") else io.out_string("2") fi;
			if a2 = a2 then io.out_string("1") else io.out_string("2") fi;
			if a2 = y then io.out_string("1") else io.out_string("2") fi;
			if y1 = y then io.out_string("1") else io.out_string("2") fi;
			if y1 = y1 then io.out_string("1") else io.out_string("2") fi;
			if y = y1 then io.out_string("1") else io.out_string("2") fi;
		}
	};

};

class Billy {
	x: Int <- 2;
	y: Int <- 9;
	z: Int <- (x + y / x / x / y * 1 + 45 / 2 - 56 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y));
	io: IO <- new IO;
	billy() : Object {
		{
			io.out_int(z);
			let w : Int <- (x + y / x / x / y * 1 + z / 2 - 56 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y) + x + y / x / z / y * 1 + 45 / 2 - 563 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y)) in 
				io.out_int(w);
		}
	};
};

class Letter {
	io : IO <- new IO;
	i : Int <- 50;
	a : Int <- 20;
	letter() : Int {
		{
			{
				a <- let i : Int in {
					i <- new Int;
					io.out_int(i);
					io.out_string("\n");
					i;
				};
				io.out_int(i);
				io.out_string("\n");
				let i : Int <- 30 in {
					i <- let i : Int <- 7 in 5 + i;
					io.out_int(i);
					io.out_string("\n");
				};
				io.out_int(i);
				io.out_string("\n");
				i;
			};
			{
				let i : Int <- 2 in {
					io.out_int(i);
					io.out_string("\n");
					let i : Int <- 5 in {
						io.out_int(i);
						io.out_string("\n");
						let i : Int <- 3 in {
							io.out_int(i);
							io.out_string("\n");
							let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
								let j : Int <- 4 in {
								io.out_int(i);
								io.out_string("\n");
								io.out_int(j);
								io.out_string("\n");
								3 + 4;
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
							};
						};
					};
				};
			};
		}
	};
};


class A1 {

};

class A2 inherits A1 {

};

class A3 inherits A2 {

};
