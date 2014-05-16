class Main { main() : SELF_TYPE { self }; };

class A {
	a(): Bool {	
		new E
	};

	a3() : SELF_TYPE {
		new SELF_TYPE
	};
};

class Stanford {
	a : Stanford;

	object : A;
	a2() : SELF_TYPE {
		{
			object <- object.a3();
			a <- new Stanford;
		}
	};
};