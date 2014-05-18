class Main {
	main() : Int {42};
};

class A {
       i: Int;
       b: Bool;
       x: SELF_TYPE;
       foo(): SELF_TYPE { x };
};
     
class B inherits A {
       y: SELF_TYPE;
       g(b: Object): Object { x.g(true) };
};