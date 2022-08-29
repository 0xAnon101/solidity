contract C {
	function mul(uint8 a, uint8 b) public pure returns (uint8) {
		if (a == 0) {
			return 0;
		}
		uint8 c = a * b;
		require(c / a == b);
		return c;
	}
}
// ====
// SMTEngine: all
// ----
// Warning 4984: (120-125): CHC: Overflow (resulting value larger than 255) happens here.
