contract C
{
	uint x;

	modifier m {
		if (x == 0)
			_;
	}

	function f() m public view {
		assert(x == 0);
		assert(x > 1);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (111-124): CHC: Assertion violation happens here.
