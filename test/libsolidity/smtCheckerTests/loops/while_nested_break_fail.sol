contract C
{
	function f(uint x, uint y, bool b, bool c) public pure {
		require(x < 10);
		while (x < 10) {
			if (b) {
				++x;
				if (x == 10)
					x = 15;
			}
			else {
				require(y < 10);
				while (y < 10) {
					if (c)
						++y;
					else {
						y = 20;
						break;
					}
				}
				assert(y >= 15);
				x = 15;
				break;
			}
		}
		assert(x >= 20);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 4984: (125-128): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 4984: (235-238): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6328: (296-311): CHC: Assertion violation might happen here.
// Warning 6328: (347-362): CHC: Assertion violation happens here.
// Warning 4661: (296-311): BMC: Assertion violation happens here.
