contract C {
	uint[][][] c;

	function f() public {
		require(c.length == 0);
		c.push().push().push() = 2;
		assert(c.length == 1);
		assert(c[0].length == 1);
		assert(c[0][0].length == 1);
		assert(c[0][0][0] == 2);
	}

	function g() public {
		c.push().push().push() = 2;
		uint length1 = c.length;
		uint length2 = c[length1 - 1].length;
		uint length3 = c[length1 - 1][length2 - 1].length;
		assert(length1 > 0);
		assert(length2 == 1);
		assert(length3 == 1);
		assert(c[length1 - 1][length2 - 1][length3 - 1] == 2);
		// Fails
		assert(c[length1 - 1][length2 - 1][length3 - 1] == 200);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (110-131): CHC: Assertion violation might happen here.
// Warning 6368: (142-146): CHC: Out of bounds access might happen here.
// Warning 6328: (135-159): CHC: Assertion violation might happen here.
// Warning 6368: (170-174): CHC: Out of bounds access might happen here.
// Warning 6368: (170-177): CHC: Out of bounds access might happen here.
// Warning 6328: (163-190): CHC: Assertion violation might happen here.
// Warning 6368: (201-205): CHC: Out of bounds access might happen here.
// Warning 6368: (201-208): CHC: Out of bounds access might happen here.
// Warning 6368: (201-211): CHC: Out of bounds access might happen here.
// Warning 6328: (194-217): CHC: Assertion violation might happen here.
// Warning 3944: (322-333): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (320-334): CHC: Out of bounds access might happen here.
// Warning 3944: (362-373): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (360-374): CHC: Out of bounds access might happen here.
// Warning 3944: (375-386): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (360-387): CHC: Out of bounds access might happen here.
// Warning 6328: (398-417): CHC: Assertion violation might happen here.
// Warning 6328: (421-441): CHC: Assertion violation might happen here.
// Warning 6328: (445-465): CHC: Assertion violation might happen here.
// Warning 3944: (478-489): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (476-490): CHC: Out of bounds access might happen here.
// Warning 3944: (491-502): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (476-503): CHC: Out of bounds access might happen here.
// Warning 3944: (504-515): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (476-516): CHC: Out of bounds access might happen here.
// Warning 6328: (469-522): CHC: Assertion violation might happen here.
// Warning 3944: (546-557): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (544-558): CHC: Out of bounds access might happen here.
// Warning 3944: (559-570): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (544-571): CHC: Out of bounds access might happen here.
// Warning 3944: (572-583): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6368: (544-584): CHC: Out of bounds access might happen here.
// Warning 6328: (537-592): CHC: Assertion violation might happen here.
// Warning 4661: (537-592): BMC: Assertion violation happens here.
