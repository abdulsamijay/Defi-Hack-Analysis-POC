pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "./interfaces/IDAO.sol";

contract Helper {
    address DAO_ADDRESS = 0xBB9bc244D798123fDe783fCc1C72d3Bb8C189413;
    function pullDAOTokens() external {
        uint256 balance = IDAO(DAO_ADDRESS).balanceOf(address(this));
        IDAO(DAO_ADDRESS).transfer(msg.sender, balance);
    }
}
