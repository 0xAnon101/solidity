contract C {
	function f(bytes32 _x) public pure {
		require(_x == "test");
		(bytes32 y, bytes16 z) = ("test", "testz");
		assert(_x == y);
		assert(_x == z);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (143-158): CHC: Assertion violation happens here.
