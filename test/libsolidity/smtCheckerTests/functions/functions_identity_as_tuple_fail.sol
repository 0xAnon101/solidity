contract C
{
	function h(uint x) public pure returns (uint) {
		return x;
	}
	function g() public pure {
		uint x;
		x = (h)(0);
		assert(x > 0);
	}
}

// ====
// SMTEngine: all
// ----
// Warning 6328: (131-144): CHC: Assertion violation happens here.
