interface I {
    function i() external;
}

library L {
    function f(I _i) internal {
        _i.i();
    }
}

contract C {
    uint x;
    bool inG;
    function s() public {
        require(inG);
        x = 2;
    }
    function g(I _i) public {
        inG = true;
        L.f(_i);
        assert(x == 0);
        inG = false;
    }
}
// ----
// Warning 6328: (296-310): CHC: Assertion violation might happen here.
// Warning 4661: (296-310): BMC: Assertion violation happens here.
