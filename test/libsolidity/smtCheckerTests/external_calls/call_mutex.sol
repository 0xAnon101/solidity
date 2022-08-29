contract C {
	uint x;

	bool lock;
	modifier mutex {
		require(!lock);
		lock = true;
		_;
		lock = false;
	}

	function set(uint _x) mutex public {
		x = _x;
	}

	function f(address _a) mutex public {
		uint y = x;
		_a.call("aaaaa");
		assert(y == x); // should hold
	}
}
// ====
// SMTEngine: all
// ----
// Warning 9302: (218-234): Return value of low-level calls not used.
// Warning 6328: (238-252): CHC: Assertion violation might happen here.
// Warning 4661: (238-252): BMC: Assertion violation happens here.
