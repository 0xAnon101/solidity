contract C {
	uint256[] x;
	function f(uint256 l) public {
		require(x.length == 0);
		x.push(42);
		x.push(84);
		for(uint256 i = 0; i < l; ++i)
			x.push(23);
		assert(x[0] == 42 || x[0] == 23);
	}
}

// ====
// SMTEngine: all
// ----
// Warning 6328: (163-195): CHC: Assertion violation might happen here.
// Warning 4661: (163-195): BMC: Assertion violation happens here.
