contract LoopFor2 {
	uint[] a;
	function p() public {
		a.push();
	}
	function testUnboundedForLoop(uint n, uint[] memory b, uint[] memory c) public {
		require(n < a.length);
		require(n < b.length);
		require(n < c.length);
		require(n > 0 && n < 100);
		b[0] = 900;
		a = b;
		for (uint i = 0; i < n; i += 1) {
			// Accesses are safe but oob is reported due to potential aliasing after c's assignment.
			b[i] = i + 1;
			// Disabled because of Spacer's nondeterminism.
			//c[i] = b[i];
		}
		// Removed because current Spacer seg faults in cex generation.
		//assert(b[0] == c[0]);
		//assert(a[0] == 900);
		//assert(b[0] == 900);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// ----
// Warning 6368: (257-261): CHC: Out of bounds access might happen here.
// Warning 6368: (409-413): CHC: Out of bounds access might happen here.
