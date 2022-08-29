contract C
{
	uint a;
	function f() public {
		if (a > 0)
		{
			a = a - 1;
			g();
		}
		else
			assert(a == 0);
	}
	function g() public {
		if (a > 0)
		{
			a = a - 1;
			f();
		}
		else
			assert(a == 0);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 3944: (69-74): CHC: Underflow (resulting value less than 0) might happen here.
// Warning 6328: (98-112): CHC: Assertion violation might happen here.
