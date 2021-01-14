pragma experimental SMTChecker;
contract C {
	struct S { uint x; uint[] b; }
	function f() public pure returns (S memory, bytes memory, uint[][2] memory) {
		return abi.decode("abc", (S, bytes, uint[][2]));
	}
}
// ----
// Warning 8364: (194-200): Assertion checker does not yet implement type type(uint256[] memory)
// Warning 8364: (194-203): Assertion checker does not yet implement type type(uint256[] memory[2] memory)
// Warning 8364: (184-185): Assertion checker does not yet implement type type(struct C.S storage pointer)
// Warning 8364: (194-200): Assertion checker does not yet implement type type(uint256[] memory)
// Warning 8364: (194-203): Assertion checker does not yet implement type type(uint256[] memory[2] memory)
// Warning 8364: (184-185): Assertion checker does not yet implement type type(struct C.S storage pointer)
