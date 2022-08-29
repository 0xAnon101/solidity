contract C
{
	uint[][] c;
	function p() public {
		c.push().push();
	}
	function f(bool b) public {
		require(c.length > 0);
		require(c[0].length > 0);
		c[0][0] = 0;
		if (b)
			c[0][0] = 1;
		else
			c[0][0] = 2;
		assert(c[0][0] > 0);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6368: (135-139): CHC: Out of bounds access might happen here.
// Warning 6368: (155-159): CHC: Out of bounds access might happen here.
// Warning 6368: (155-162): CHC: Out of bounds access might happen here.
// Warning 6368: (180-184): CHC: Out of bounds access might happen here.
// Warning 6368: (180-187): CHC: Out of bounds access might happen here.
// Warning 6368: (203-207): CHC: Out of bounds access might happen here.
// Warning 6368: (203-210): CHC: Out of bounds access might happen here.
// Warning 6368: (225-229): CHC: Out of bounds access might happen here.
// Warning 6368: (225-232): CHC: Out of bounds access might happen here.
// Warning 6328: (218-237): CHC: Assertion violation might happen here.
