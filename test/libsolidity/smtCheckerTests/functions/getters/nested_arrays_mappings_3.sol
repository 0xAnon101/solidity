contract C {
	mapping (uint => uint[][][]) public m;

	constructor() {
		m[0].push();
		m[0].push();
		m[0][1].push();
		m[0][1].push();
		m[0][1].push();
		m[0][1][2].push();
		m[0][1][2].push();
		m[0][1][2].push();
		m[0][1][2].push();
		m[0][1][2][3] = 42;
	}

	function f() public view {
		uint y = this.m(0,1,2,3);
		assert(y == m[0][1][2][3]); // should hold
		// Disabled because of Spacer seg fault
		//assert(y == 1); // should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6368: (103-110): CHC: Out of bounds access might happen here.
// Warning 6368: (121-128): CHC: Out of bounds access might happen here.
// Warning 6368: (139-146): CHC: Out of bounds access might happen here.
// Warning 6368: (178-188): CHC: Out of bounds access might happen here.
// Warning 6368: (199-209): CHC: Out of bounds access might happen here.
// Warning 6368: (220-227): CHC: Out of bounds access might happen here.
// Warning 6368: (220-230): CHC: Out of bounds access might happen here.
// Warning 6368: (241-251): CHC: Out of bounds access might happen here.
// Warning 6368: (335-342): CHC: Out of bounds access might happen here.
// Warning 6368: (335-345): CHC: Out of bounds access might happen here.
// Warning 6368: (335-348): CHC: Out of bounds access might happen here.
// Warning 6328: (323-349): CHC: Assertion violation might happen here.
