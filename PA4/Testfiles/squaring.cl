class Main {
	main() : SELF_TYPE {

	}
}

method5(num : Int) : E { -- square
	(let x : Int in {
		x <- num * num;
		(new E).set_var(x);
	})
};

