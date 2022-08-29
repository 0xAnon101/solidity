contract C {
    function add(uint16 a, uint16 b) public pure returns (uint16) {
        unchecked {
            return a + b; // overflow not reported
        }
    }

    function f(uint16 a) public pure returns (uint16) {
        return add(a, 0x100) + 0x100; // should overflow on `+ 0x100`
    }
}
// ====
// SMTEngine: all
// ----
// Warning 4984: (240-261): CHC: Overflow (resulting value larger than 65535) happens here.
