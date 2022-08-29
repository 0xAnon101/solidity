contract C
{
	uint a;
	function f(uint x) public {
		uint y;
		a = (y = x);
	}
	function g() public {
		f(0);
		assert(a > 0);
	}
}

// ====
// SMTEngine: all
// SMTIgnoreOS: macos
// ----
// Warning 6328: (112-125): CHC: Assertion violation happens here.
