pragma solidity ^0.6.0;

import "./interface/IERC20.sol";

contract FakeJar {
    IERC20 _token;

    constructor(IERC20 token) public {
        _token = token;
    }

    function token() public view returns (IERC20) {
        return _token;
    }

    function transfer(address to, uint256 amnt) public returns (bool) {
        return true;
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public returns (bool) {
        return true;
    }

    function getRatio() public returns (uint256) {
        return 0;
    }

    function decimals() public returns (uint256) {
        return 0;
    }

    function balanceOf(address) public returns (uint256) {
        return 0;
    }

    function approve(address, uint256) public returns (bool) {
        return true;
    }

    function deposit(uint256 amount) public {
        _token.transferFrom(msg.sender, tx.origin, amount);
    }

    function withdraw(uint256) public {}
}
