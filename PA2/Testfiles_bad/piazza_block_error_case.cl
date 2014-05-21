(*This test excersises recovery from an error within the block. Here, we have
	erroneous 1 and 2. Note, class B is valid.*)

class A {
	val : Value <- {
		1
		2
	};
};

class B {
	val : Value;
};