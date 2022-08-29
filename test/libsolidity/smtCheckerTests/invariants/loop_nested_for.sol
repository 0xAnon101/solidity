contract Simple {
	function f() public pure {
		uint x;
		uint y;
		for (x = 10; y < x; ++y)
		{
			for (x = 0; x < 10; ++x) {}
			assert(x == 10);
		}
		// Disabled because of Spacer nondeterminism.
		//assert(y == x);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 4984: (88-91): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 4984: (120-123): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6328: (131-146): CHC: Assertion violation might happen here.
// Warning 4661: (131-146): BMC: Assertion violation happens here.
