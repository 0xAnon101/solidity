contract State {
	uint x;
	C c;
	function f() public view returns (uint) {
		return c.g();
	}
}

contract C {
	address owner;
	uint y;
	uint z;
	State s;
	bool insidef;

	constructor() {
		owner = msg.sender;
	}

	function zz() public {
		require(insidef);
		z = 3;
	}

	function f() public {
		require(!insidef);
		address prevOwner = owner;
		insidef = true;
		// s.f() cannot call zz() because it is `view`
		// and zz modifies the state.
		s.f();
		assert(z == y);
		assert(prevOwner == owner);
		insidef = false;
	}

	function g() public view returns (uint) {
		return y;
	}
}
// ====
// SMTEngine: all
// SMTIgnoreInv: yes
// ----
// Warning 6328: (453-467): CHC: Assertion violation might happen here.
// Warning 6328: (471-497): CHC: Assertion violation might happen here.
// Warning 4661: (453-467): BMC: Assertion violation happens here.
// Warning 4661: (471-497): BMC: Assertion violation happens here.
