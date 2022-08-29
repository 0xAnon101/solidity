contract C {

	function test(uint256 a) public pure {
		assert(simple_if(a) == 1); // should fail for a == 0
	}

	function simple_if(uint256 a) internal pure returns (uint256) {
		if (a == 0) {
			return 0;
		}
		return 1;
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (56-81): CHC: Assertion violation happens here.
