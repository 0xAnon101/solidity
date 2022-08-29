contract C
{
	function f(uint x, uint y, bool b, bool c) public pure {
		require(x < 10);
		while (x < 10) {
			if (b) {
				x = 20;
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
				assert(y >= 15);
				x = y;
			}
		}
		assert(x >= 15);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// ----
// Warning 6328: (290-305): CHC: Assertion violation might happen here.
// Warning 6328: (329-344): CHC: Assertion violation might happen here.
// Warning 4661: (290-305): BMC: Assertion violation happens here.
// Warning 4661: (329-344): BMC: Assertion violation happens here.
