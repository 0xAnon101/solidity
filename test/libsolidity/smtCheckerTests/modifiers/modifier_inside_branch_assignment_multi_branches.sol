contract C {
	uint x;
	address owner;

	modifier onlyOwner {
		if (msg.sender == owner) {
			require(x > 0);
			_;
		}
	}

	function f() public onlyOwner {
		x -= 1;
		h();
	}
	function h() public onlyOwner {
		require(x < 10000);
		x += 2;
	}
	function g(uint y) public {
		require(y > 0 && y < 10000);
		require(msg.sender == owner);
		x = y;
		if (y > 1) {
			f();
			// This now fails as a false positive because
			// CHC does not propagate msg.sender throughout predicates.
			assert(x == y + 1);
		}
		// Fails for {y = 0, x = 0}.
		assert(x == 0);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 3944: (158-164): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 4984: (233-239): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6328: (483-501): CHC: Assertion violation might happen here.
// Warning 6328: (540-554): CHC: Assertion violation happens here.
