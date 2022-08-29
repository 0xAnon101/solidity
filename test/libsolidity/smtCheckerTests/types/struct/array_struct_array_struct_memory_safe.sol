pragma abicoder               v2;

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
	function f() public pure {
		S[] memory s1 = new S[](3);
		assert(s1.length == 3);
		s1[0].x = 2;
		assert(s1[0].x == 2);
		s1[1].t.y = 3;
		assert(s1[1].t.y == 3);
		s1[2].a = new uint[](3);
		s1[2].a[2] = 4;
		assert(s1[2].a[2] == 4);
		s1[0].ts = new T[](6);
		s1[0].ts[3].y = 5;
		assert(s1[0].ts[3].y == 5);
		s1[1].ts = new T[](6);
		s1[1].ts[4].a = new uint[](6);
		s1[1].ts[4].a[5] = 6;
		assert(s1[1].ts[4].a[5] == 6);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (199-221): CHC: Assertion violation might happen here.
// Warning 6368: (225-230): CHC: Out of bounds access might happen here.
// Warning 6368: (247-252): CHC: Out of bounds access might happen here.
// Warning 6328: (240-260): CHC: Assertion violation might happen here.
// Warning 6368: (264-269): CHC: Out of bounds access might happen here.
// Warning 6368: (288-293): CHC: Out of bounds access might happen here.
// Warning 6328: (281-303): CHC: Assertion violation might happen here.
// Warning 6368: (307-312): CHC: Out of bounds access might happen here.
// Warning 6368: (334-339): CHC: Out of bounds access might happen here.
// Warning 6368: (334-344): CHC: Out of bounds access might happen here.
// Warning 6368: (359-364): CHC: Out of bounds access might happen here.
// Warning 6368: (359-369): CHC: Out of bounds access might happen here.
// Warning 6328: (352-375): CHC: Assertion violation might happen here.
// Warning 6368: (379-384): CHC: Out of bounds access might happen here.
// Warning 6368: (404-409): CHC: Out of bounds access might happen here.
// Warning 6368: (404-415): CHC: Out of bounds access might happen here.
// Warning 6368: (432-437): CHC: Out of bounds access might happen here.
// Warning 6368: (432-443): CHC: Out of bounds access might happen here.
// Warning 6328: (425-451): CHC: Assertion violation might happen here.
// Warning 6368: (455-460): CHC: Out of bounds access might happen here.
// Warning 6368: (480-485): CHC: Out of bounds access might happen here.
// Warning 6368: (480-491): CHC: Out of bounds access might happen here.
// Warning 6368: (513-518): CHC: Out of bounds access might happen here.
// Warning 6368: (513-524): CHC: Out of bounds access might happen here.
// Warning 6368: (513-529): CHC: Out of bounds access might happen here.
// Warning 6368: (544-549): CHC: Out of bounds access might happen here.
// Warning 6368: (544-555): CHC: Out of bounds access might happen here.
// Warning 6368: (544-560): CHC: Out of bounds access might happen here.
// Warning 6328: (537-566): CHC: Assertion violation might happen here.
