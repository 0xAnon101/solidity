contract C
{
	uint[][] a;
	constructor() {
		a.push(); a.push(); a.push();
		a[2].push();
		a[2].push();
		a[2].push();
		a[2].push();
	}
	function f() public {
		require(a[2][3] == 4);
		delete a;
		assert(a[2][3] == 0);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6368: (171-175): CHC: Out of bounds access might happen here.
// Warning 6368: (171-178): CHC: Out of bounds access might happen here.
