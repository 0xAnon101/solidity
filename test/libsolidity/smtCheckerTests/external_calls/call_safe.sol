contract C {
	uint x;
	function f(address a) public {
		(bool s, bytes memory data) = a.call("");
		assert(x == 0); // should hold
	}
}
// ====
// SMTEngine: all
// SMTIgnoreInv: yes
// ----
// Warning 2072: (57-63): Unused local variable.
// Warning 2072: (65-82): Unused local variable.
// Warning 6328: (100-114): CHC: Assertion violation might happen here.
// Warning 4661: (100-114): BMC: Assertion violation happens here.
