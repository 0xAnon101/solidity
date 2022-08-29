contract C {
	uint[][] a;
	function p() public { a.push(); }
	function q(uint i) public {
		require(i < a.length);
		a[i].push();
	}
	function r() public view {
		for (uint i = 0; i < a.length; ++i)
			for (uint j = 0; j < a[i].length; ++j)
				a[i][j]; // safe access
	}
}
// ====
// SMTEngine: all
// ----
// Warning 4984: (194-197): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6368: (223-227): CHC: Out of bounds access might happen here.
// Warning 4984: (236-239): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6368: (245-249): CHC: Out of bounds access might happen here.
// Warning 6368: (245-252): CHC: Out of bounds access might happen here.
