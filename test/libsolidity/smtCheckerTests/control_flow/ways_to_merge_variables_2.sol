contract C {
    function f(uint x) public pure {
        uint a = 3;
        if (x > 10) {
            ++a;
        }
        assert(a == 3);
    }
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (127-141): CHC: Assertion violation happens here.
