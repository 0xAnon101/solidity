abstract contract D {
	function d() external virtual;
}

contract C {
	address t;
	constructor() {
		t = address(this);
	}
	function f(D d) public {
		address a = address(this);
		d.d();
		assert(address(this) == t);
		assert(a == t);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreInv: yes
// SMTIgnoreOS: macos
// ----
// Warning 6328: (189-215): CHC: Assertion violation might happen here.
// Warning 6328: (219-233): CHC: Assertion violation might happen here.
// Warning 4661: (189-215): BMC: Assertion violation happens here.
// Warning 4661: (219-233): BMC: Assertion violation happens here.
