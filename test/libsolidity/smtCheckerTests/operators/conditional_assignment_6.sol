abstract contract D {
    function d() public virtual ;
}

contract C {
    bool a;
    uint x;
    D d;
    function g() public returns (uint) {
        x = 2;
        d.d();
        return x;
    }
    function f(bool b) public {
        x = 1;
        uint y = b ? g() : 3;
        assert(x == 2 || x == 1);
    }
    function h() internal {
        x = 3;
    }
}
// ====
// SMTEngine: all
// SMTIgnoreOS: macos
// ----
// Warning 2072: (255-261): Unused local variable.
// Warning 6328: (285-309): CHC: Assertion violation might happen here.
// Warning 4661: (285-309): BMC: Assertion violation happens here.
