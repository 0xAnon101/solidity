interface I {
	function ext() external;
}

contract C {
	bool lock;
	modifier mutex {
		require(!lock);
		lock = true;
		_;
		lock = false;
	}
	function f(I _i) public mutex {
		uint x = address(this).balance;
		_i.ext();
		assert(address(this).balance == x); // should hold
		assert(address(this).balance < x); // should fail
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (224-258): CHC: Assertion violation might happen here.
// Warning 6328: (277-310): CHC: Assertion violation happens here.
// Warning 4661: (224-258): BMC: Assertion violation happens here.
