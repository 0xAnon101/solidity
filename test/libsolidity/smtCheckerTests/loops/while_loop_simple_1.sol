// Check that variables are cleared
contract C {
    function f(uint x) public pure {
        x = 2;
        while (x > 1) {
            x = 1;
        }
        assert(x == 2);
    }
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// ----
// Warning 6328: (162-176): CHC: Assertion violation happens here.
