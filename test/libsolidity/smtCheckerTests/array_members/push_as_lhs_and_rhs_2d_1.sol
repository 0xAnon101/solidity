contract C {
	uint[][] b;
	function f() public {
		require(b.length == 0);
		b.push().push() = b.push().push();
		assert(b.length == 2);
		assert(b[0].length == 1);
		assert(b[0].length == 1);
		assert(b[0][0] == 0);
		assert(b[1][0] == 0);
		assert(b[0][0] == b[1][0]);
		// Fails
		assert(b[0][0] != b[1][0]);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (114-135): CHC: Assertion violation might happen here.
// Warning 6328: (284-310): CHC: Assertion violation might happen here.
// Warning 4661: (284-310): BMC: Assertion violation happens here.
