pragma solidity 0.8.13;

import "../Wintermute.sol";

contract ContractTest is Test {
    Wintermute w;

    function setUp() public {
        w = new Wintermute();
    }
    function testWintermuteAddress() public {
        // Generate address
        w.generateAddress();
    }
}