pragma abicoder v2;

contract C {
	struct T {
		uint t;
	}
	struct S {
		uint x;
		T t;
		bool b;
		uint[] a;
	}

	S public s;

	function f() public view {
		uint y;
		bool c;
		T memory t;
		(y,t,c) = this.s();
		assert(y == s.x); // this should hold
		assert(c == s.b); // this should hold
		assert(t.t == s.t.t); // this should hold
		assert(c == true); // this should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (338-355): CHC: Assertion violation happens here.
