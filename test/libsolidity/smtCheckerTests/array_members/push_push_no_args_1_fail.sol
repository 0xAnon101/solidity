contract C {
	int[][] array2d;
	function l() public {
		array2d.push().push();
		assert(array2d.length > 2);
		assert(array2d[array2d.length - 1].length > 3);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (81-107): CHC: Assertion violation happens here.
// Warning 6328: (111-157): CHC: Assertion violation happens here.
