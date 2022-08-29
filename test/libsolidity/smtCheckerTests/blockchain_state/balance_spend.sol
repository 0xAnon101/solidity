contract C {
	constructor() payable {
		require(msg.value > 100);
	}
	uint c;
	function f(address payable _a, uint _v) public {
		require(_v < 10);
		require(c < 2);
		++c;
		_a.transfer(_v);
	}
	function inv() public view {
		assert(address(this).balance > 80); // should hold
		assert(address(this).balance > 90); // should fail
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (227-261): CHC: Assertion violation might happen here.
// Warning 6328: (280-314): CHC: Assertion violation might happen here.
// Warning 1236: (175-190): BMC: Insufficient funds happens here.
// Warning 4661: (227-261): BMC: Assertion violation happens here.
// Warning 4661: (280-314): BMC: Assertion violation happens here.
