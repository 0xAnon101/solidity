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
		assert(s1.x == 2);
		s1.t.y = 3;
		assert(s1.t.y == 3);
		s1.a.push();
		s1.a.push();
		s1.a.push();
		s1.a[2] = 4;
		assert(s1.a[2] == 4);
		s1.ts.push();
		s1.ts.push();
		s1.ts.push();
		s1.ts.push();
		s1.ts.push();
		s1.ts[3].y = 5;
		assert(s1.ts[3].y == 5);
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a.push();
		s1.ts[4].a[5] = 6;
		assert(s1.ts[4].a[5] == 6);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (148-165): CHC: Assertion violation might happen here.
// Warning 6328: (183-202): CHC: Assertion violation might happen here.
// Warning 6368: (251-258): CHC: Out of bounds access might happen here.
// Warning 6368: (273-280): CHC: Out of bounds access might happen here.
// Warning 6328: (266-286): CHC: Assertion violation might happen here.
// Warning 6368: (370-378): CHC: Out of bounds access might happen here.
// Warning 6368: (395-403): CHC: Out of bounds access might happen here.
// Warning 6328: (388-411): CHC: Assertion violation might happen here.
// Warning 6368: (415-423): CHC: Out of bounds access might happen here.
// Warning 6368: (436-444): CHC: Out of bounds access might happen here.
// Warning 6368: (457-465): CHC: Out of bounds access might happen here.
// Warning 6368: (478-486): CHC: Out of bounds access might happen here.
// Warning 6368: (499-507): CHC: Out of bounds access might happen here.
// Warning 6368: (520-528): CHC: Out of bounds access might happen here.
// Warning 6368: (541-549): CHC: Out of bounds access might happen here.
// Warning 6368: (541-554): CHC: Out of bounds access might happen here.
// Warning 6368: (569-577): CHC: Out of bounds access might happen here.
// Warning 6368: (569-582): CHC: Out of bounds access might happen here.
// Warning 6328: (562-588): CHC: Assertion violation might happen here.
