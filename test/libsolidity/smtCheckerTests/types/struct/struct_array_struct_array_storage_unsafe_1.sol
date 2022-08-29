contract C {
	struct T {
		uint y;
		uint[] a;
	}
	struct S {
		uint x;
		T t;
		uint[] a;
		T[] ts;
	}
	S s1;
	function f() public {
		s1.x = 2;
		assert(s1.x != 2);
		s1.t.y = 3;
		assert(s1.t.y != 3);
		s1.a.push();
		s1.a.push();
		s1.a.push();
		s1.a[2] = 4;
		assert(s1.a[2] != 4);
		s1.ts.push();
		s1.ts.push();
		s1.ts.push();
		s1.ts.push();
		s1.ts.push();
		s1.ts.push();
		s1.ts[3].y = 5;
		assert(s1.ts[3].y != 5);
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a[5] = 6;
		assert(s1.ts[4].a[5] != 6);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (148-165): CHC: Assertion violation might happen here.
// Warning 6328: (183-202): CHC: Assertion violation might happen here.
// Warning 6368: (251-258): CHC: Out of bounds access might happen here.
// Warning 6368: (273-280): CHC: Out of bounds access might happen here.
// Warning 6328: (266-286): CHC: Assertion violation might happen here.
// Warning 6368: (386-394): CHC: Out of bounds access might happen here.
// Warning 6368: (411-419): CHC: Out of bounds access might happen here.
// Warning 6328: (404-427): CHC: Assertion violation might happen here.
// Warning 6368: (431-439): CHC: Out of bounds access might happen here.
// Warning 6368: (452-460): CHC: Out of bounds access might happen here.
// Warning 6368: (473-481): CHC: Out of bounds access might happen here.
// Warning 6368: (494-502): CHC: Out of bounds access might happen here.
// Warning 6368: (515-523): CHC: Out of bounds access might happen here.
// Warning 6368: (536-544): CHC: Out of bounds access might happen here.
// Warning 6368: (557-565): CHC: Out of bounds access might happen here.
// Warning 6368: (557-570): CHC: Out of bounds access might happen here.
// Warning 6368: (585-593): CHC: Out of bounds access might happen here.
// Warning 6368: (585-598): CHC: Out of bounds access might happen here.
// Warning 6328: (578-604): CHC: Assertion violation might happen here.
// Warning 4661: (148-165): BMC: Assertion violation happens here.
// Warning 4661: (183-202): BMC: Assertion violation happens here.
// Warning 4661: (266-286): BMC: Assertion violation happens here.
// Warning 4661: (404-427): BMC: Assertion violation happens here.
// Warning 7812: (578-604): BMC: Assertion violation might happen here.
