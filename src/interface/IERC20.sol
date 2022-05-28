pragma solidity 0.6.0;

interface IERC20 {
    function transfer(address, uint256) external;

    function transferFrom(
        address,
        address,
        uint256
    ) external;

    function approve(address, uint256) external;

    function decimals() external view returns (uint8);

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function balanceOf(address) external view returns (uint256);

    function totalSupply() external view returns (uint256);
}
