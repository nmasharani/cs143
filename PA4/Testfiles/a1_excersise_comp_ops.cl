class Main {
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
	main() : Object {
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

class A2 {

};

class A1 {

};


