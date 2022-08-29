contract C {
	struct S {
		uint u;
	}

	S public s;

	function f() public view {
		uint u = this.s();
		uint v = this.s();
		assert(u == s.u); // should hold
		assert(u == v); // should hold
		assert(u == 1); // should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (193-207): CHC: Assertion violation happens here.
