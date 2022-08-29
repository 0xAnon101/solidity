contract C
{
	function f(uint x) public pure {
		require(x < 100);
		uint y = 100;
		y += y + x;
		assert(y < 300);
		assert(y < 110);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (118-133): CHC: Assertion violation happens here.
