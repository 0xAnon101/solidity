abstract contract D
{
	function g(uint x) public virtual;
}

contract C
{
	mapping (uint => uint) map;
	function f(uint y, D d) public {
		require(map[0] == map[1]);
		assert(map[0] == map[1]);
		d.g(y);
		assert(map[0] == map[1]);
		assert(map[0] == 0); // should fail
	}

	function set(uint x) public {
		map[0] = x;
		map[1] = x;
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// SMTIgnoreOS: macos
// ----
// Warning 6328: (168-192): CHC: Assertion violation might happen here.
// Warning 6328: (206-230): CHC: Assertion violation might happen here.
// Warning 6328: (234-253): CHC: Assertion violation might happen here.
// Warning 4661: (206-230): BMC: Assertion violation happens here.
// Warning 4661: (234-253): BMC: Assertion violation happens here.
