contract C {
	uint[2] a;
	function f() public view {
		assert(a.length == 2); // should hold
		assert(a.length < 2); // should fail
		assert(a.length > 2); // should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (95-115): CHC: Assertion violation happens here.
// Warning 6328: (134-154): CHC: Assertion violation happens here.
