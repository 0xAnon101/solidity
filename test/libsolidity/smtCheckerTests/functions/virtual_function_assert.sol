contract A {
    int x = 0;

    function f() virtual internal view {
        assert(x == 0);
    }

    function proxy() public view {
        f();
    }
}

contract C is A {

    function f() internal view override {
        assert(x == 1);
    }
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (227-241): CHC: Assertion violation happens here.
