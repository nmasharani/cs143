(*Test of blocks taken from piazza.*)
(*
class A {
	block_test() : Int {
		{
		  let x : Y in (* No body *);
		  let x Y in 1;
		}
	};
};

class A {
	block_test() : Int {
		{
		  let x Y in 1;
		  let x Y in 1;
		}
	};
};*)

class A {
	block_test() : Int {
		{
		  1 + ;
		  2 + ;
		}
	};
};

