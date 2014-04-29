(* Taken from https://piazza.com/class/hs6dfpbn1ot3wf?cid=174 *)

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