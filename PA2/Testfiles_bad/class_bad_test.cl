class Test3 {
	x : Int <- 0;
	set_x(a : Int) : Bool {
		x <- a;
	};
	(* should be syntax error on next line *)
};  


(* Taken from piazza post https://piazza.com/class/hs6dfpbn1ot3wf?cid=161 *)
class A {
	val : Value <- {
		1
	};
};

(* should be syntax error on next line *)
class B {  
	val : Value;
};


(* Taken from piazza post https://piazza.com/class/hs6dfpbn1ot3wf?cid=160 *)
(* our behavior here is correct *)

class Example {};

class Example2 {}

class Example3 {