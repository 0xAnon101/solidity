contract C{
    uint x;
	constructor(uint y) {
		assert(x == 1);
		x = 1;
	}
    function f() public {
		assert(x == 2);
		++x;
		++x;
		g();
		g();
		assert(x == 3);
    }

	function g() internal {
		--x;
	}
}
// ====
// SMTEngine: all
// ----
// Warning 5667: (37-43): Unused function parameter. Remove or comment out the variable name to silence this warning.
// Warning 6328: (49-63): CHC: Assertion violation happens here.\nCounterexample:\nx = 0\ny = 0\n\nTransaction trace:\nC.constructor(0)
// Warning 6328: (105-119): CHC: Assertion violation happens here.
// Warning 4984: (123-126): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 4984: (130-133): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6328: (151-165): CHC: Assertion violation happens here.
// Warning 3944: (201-204): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 2661: (123-126): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Warning 2661: (130-133): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Warning 4144: (201-204): BMC: Underflow (resulting value less than 0) happens here.
