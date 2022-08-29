contract C {
	uint x = g();
	function g() internal view returns (uint) {
		return address(this).balance;
	}
	constructor() {
		assert(x == 0); // should fail because there might be funds from before deployment
		assert(x > 0); // should fail
	}
	function f() public view {
		assert(x == 0); // should fail because there might be funds from before deployment
		assert(x > 0); // should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (127-141): CHC: Assertion violation happens here.
// Warning 6328: (212-225): CHC: Assertion violation happens here.
// Warning 6328: (275-289): CHC: Assertion violation happens here.
// Warning 6328: (360-373): CHC: Assertion violation happens here.
