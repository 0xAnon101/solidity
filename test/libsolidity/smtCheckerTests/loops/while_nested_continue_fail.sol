contract C
{
	function f(uint x, uint y, bool b, bool c) public pure {
		require(x < 10);
		while (x < 10) {
			if (b) {
				x = 15;
				continue;
			}
			else {
				require(y < 10);
				while (y < 10) {
					if (c) {
						y = 20;
						continue;
					}
					y = 15;
					break;
				}
				assert(y >= 20);
				x = y;
			}
		}
		assert(x >= 20);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (290-305): CHC: Assertion violation happens here.
// Warning 6328: (329-344): CHC: Assertion violation happens here.
