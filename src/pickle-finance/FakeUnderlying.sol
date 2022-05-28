pragma solidity 0.6.0;
contract FakeUnderlying {
    address private target;

    constructor(address _target) public {
        target = _target;
    }

    function balanceOf(address) public returns (address) {
        return target;
    }

    function approve(address, uint256) public returns (bool) {
        return true;
    }

    function allowance(address, address) public returns (uint256) {
        return 0;
    }
}
