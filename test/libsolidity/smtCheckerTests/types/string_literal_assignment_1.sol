contract C {
	function f(bytes32 _x) public pure {
		require(_x == "test");
		bytes32 y = "test";
		bytes16 z = "testz";
		assert(_x == y);
		assert(_x == z);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (142-157): CHC: Assertion violation happens here.
