contract C {
    uint a;
    function f(uint x) public {
        this.g(x);
        assert(a == x);
        assert(a != 42);
    }

    function g(uint x) public {
        a = x;
    }
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (108-123): CHC: Assertion violation happens here.
