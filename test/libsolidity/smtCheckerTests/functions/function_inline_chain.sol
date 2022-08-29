contract C
{
	uint y;

	function f() public {
		if (y != 1)
			g();
		assert(y == 1);
	}

	function g() internal {
		y = 1;
		h();
	}

	function h() internal {
		f();
		assert(y == 1);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (70-84): CHC: Assertion violation might happen here.
// Warning 6328: (169-183): CHC: Assertion violation might happen here.
