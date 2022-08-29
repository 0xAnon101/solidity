contract C {
	function f(uint x) public pure {
		require(x == 2);
		uint y = 10;
		y /= y / x;
		assert(y == x);
		assert(y == 0);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (115-129): CHC: Assertion violation happens here.
