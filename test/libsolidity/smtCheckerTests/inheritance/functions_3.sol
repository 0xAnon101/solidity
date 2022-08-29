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

// 3 warnings, B.f, B.h, A.g
contract B is A {
	uint y;

	function f() public view virtual override {
		assert(x == 1);
	}
	function h() public view {
		assert(x == 1);
	}
}

// 4 warnings, C.f, C.i, B.h, A.g
contract C is B {
	uint z;

	function f() public view override {
		assert(x == 1);
	}
	function i() public view {
		assert(x == 1);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (88-102): CHC: Assertion violation happens here.
// Warning 6328: (137-151): CHC: Assertion violation happens here.
// Warning 6328: (263-277): CHC: Assertion violation happens here.
// Warning 6328: (312-326): CHC: Assertion violation happens here.
// Warning 6328: (435-449): CHC: Assertion violation happens here.
// Warning 6328: (484-498): CHC: Assertion violation happens here.
