(*Class error example.*)

(* no error *)
class A {
};

(* class misspelled *)
cass A {
};

(* error:  b is not a type identifier *)
Class b inherits A {
};

(* error:  a is not a type identifier *)
Class C inherits a {
};