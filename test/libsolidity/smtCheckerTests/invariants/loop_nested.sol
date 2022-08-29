contract Simple {
	function f() public pure {
		uint x = 10;
		uint y;
		while (y < x)
		{
			++y;
			x = 0;
			while (x < 10)
				++x;
			assert(x == 10);
		}
		// Removed because of Spacer nondeterminism.
		//assert(y == x);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (139-154): CHC: Assertion violation might happen here.
// Warning 4661: (139-154): BMC: Assertion violation happens here.
