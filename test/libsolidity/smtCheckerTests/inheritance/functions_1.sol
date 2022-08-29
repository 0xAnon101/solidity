// 2 warnings, A.f and A.g
contract A {
	uint x;

	function f() public virtual view {
		assert(x == 1);
	}
	function g() public view {
		assert(x == 1);
	}
}

// 2 warnings, B.f and A.g
contract B is A {
	function f() public view override {
		assert(x == 1);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (88-102): CHC: Assertion violation happens here.
// Warning 6328: (137-151): CHC: Assertion violation happens here.
// Warning 6328: (243-257): CHC: Assertion violation happens here.
