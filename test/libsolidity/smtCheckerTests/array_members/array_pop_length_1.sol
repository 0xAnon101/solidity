contract C {
	uint[] a;
	function f() public {
		a.pop();
		a.push();
	}
}
// ====
// SMTEngine: all
// ----
// Warning 2529: (49-56): CHC: Empty array "pop" happens here.
