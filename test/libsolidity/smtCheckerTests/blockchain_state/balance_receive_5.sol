contract C {
	uint sum = msg.value;
	function f() public payable {
		sum += msg.value;
	}
	function inv() public view {
		assert(address(this).balance == sum); // should fail
		assert(address(this).balance >= sum); // should hold
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (122-158): CHC: Assertion violation happens here.
