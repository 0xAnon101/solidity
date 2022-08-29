contract C {
	function r(bytes4 x, uint y) public pure returns (bytes1) {
		return x[y]; // oob access
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6368: (83-87): CHC: Out of bounds access happens here.
