contract C
{
	mapping (address => uint) map;
	function f(address a, uint x) public view {
		assert(x != map[a]);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (92-111): CHC: Assertion violation happens here.
