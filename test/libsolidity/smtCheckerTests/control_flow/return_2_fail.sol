contract C {
	uint c;
	function add(uint x, uint y) internal returns (uint) {
		c = 0xff;
		if (y == 0)
			return x;
		c = 0xffff;
		if (y == 1)
			return ++x;
		c = 0xffffff;
		if (y == 2)
			return x + 2;
		c = 0xffffffff;
		return x + y;
	}

	function f() public {
		assert(add(100, 0) != 100);
		assert(c != 0xff);
		assert(add(100, 1) != 101);
		assert(c != 0xffff);
		assert(add(100, 2) != 102);
		assert(c != 0xffffff);
		assert(add(100, 100) != 200);
		assert(c != 0xffffffff);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 4984: (155-158): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 4984: (234-239): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6328: (270-296): CHC: Assertion violation happens here.
// Warning 6328: (300-317): CHC: Assertion violation happens here.
// Warning 6328: (321-347): CHC: Assertion violation happens here.
// Warning 6328: (351-370): CHC: Assertion violation happens here.
// Warning 6328: (374-400): CHC: Assertion violation happens here.
// Warning 6328: (404-425): CHC: Assertion violation happens here.
// Warning 6328: (429-457): CHC: Assertion violation happens here.
// Warning 6328: (461-484): CHC: Assertion violation happens here.
// Warning 2661: (155-158): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Warning 2661: (234-239): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
