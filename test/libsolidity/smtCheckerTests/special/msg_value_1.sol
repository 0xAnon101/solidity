contract C {
	function f() public payable {
		assert ((5 + msg.value + msg.value) - (4 + msg.value) > 0);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 4984: (55-68): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Warning 4984: (55-80): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.
