contract C
{
	uint a;
	function f(uint x) public {
		uint y;
		a = (y = x);
	}
	function g() public {
		f(1);
		f(0);
		assert(a > 0);
	}
}

// ====
// SMTEngine: all
// ----
// Warning 6328: (120-133): CHC: Assertion violation happens here.
