==== Source: A.sol ====
contract A {
	uint x;
	function f(uint _x) public {
		x = _x;
	}
}
==== Source: B.sol ====
import "A.sol";
contract B is A {
	function g(uint _x) public view {
		assert(_x > x);
	}
}
==== Source: C.sol ====
import "A.sol";
contract C is A {
	function h(uint _x) public view {
		assert(_x < x);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (B.sol:71-85): CHC: Assertion violation happens here.
// Warning 6328: (C.sol:71-85): CHC: Assertion violation happens here.
