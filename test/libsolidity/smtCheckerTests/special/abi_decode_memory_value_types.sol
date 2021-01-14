pragma experimental SMTChecker;
contract C {
	function f() public pure {
		(uint x1, bool b1) = abi.decode("abc", (uint, bool));
		(uint x2, bool b2) = abi.decode("abc", (uint, bool));
		// False positive until abi.* are implemented as uninterpreted functions.
		assert(x1 == x2);
	}
}
// ----
// Warning 2072: (85-92): Unused local variable.
// Warning 2072: (141-148): Unused local variable.
// Warning 6328: (263-279): CHC: Assertion violation happens here.
