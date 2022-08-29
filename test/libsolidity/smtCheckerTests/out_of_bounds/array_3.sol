contract C {
	uint[] a;
	function r(uint i) public view returns (uint) {
		return a[i]; // oob access
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6368: (82-86): CHC: Out of bounds access happens here.
