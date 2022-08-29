// 2 warnings, receive and A.g
contract A {
	uint x;

	receive () external payable {
		assert(x == 1);
	}
	function g() public view {
		assert(x == 1);
	}
}

// 3 warnings, fallback, A.receive and A.g
contract B is A {
	uint y;

	fallback () external {
		assert(x == 1);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (87-101): CHC: Assertion violation happens here.
// Warning 6328: (136-150): CHC: Assertion violation happens here.
// Warning 6328: (255-269): CHC: Assertion violation happens here.
