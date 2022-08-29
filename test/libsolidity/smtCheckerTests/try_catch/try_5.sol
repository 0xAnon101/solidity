abstract contract D {
	function d() external virtual;
}

contract C {

	int x;
	D d;

	function set(int n) public {
		require(n < 100);
		x = n;
	}

	function f() public {
		x = 0;
		try d.d() {
			assert(x < 100); // should hold
		} catch {
			assert(x == 0); // should hold, all changes to x has been reverted
			assert(x == 1); // should fail
		}
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (198-213): CHC: Assertion violation might happen here.
// Warning 6328: (315-329): CHC: Assertion violation happens here.
// Warning 4661: (198-213): BMC: Assertion violation happens here.
