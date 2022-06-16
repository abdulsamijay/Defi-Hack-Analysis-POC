
interface IYearnVault {
    function deposit(uint256, address) external returns (uint256);
}

interface InverseFinanace {
    function mint(uint256 mintAmount) external returns (uint256);
}

interface IUnitroller {
    function enterMarkets(address[] memory cTokens)
        external
        returns (uint256[] memory);

    function borrow(uint256) external returns (uint256);
}

interface IYearnVaultFeed {
    function latestAnswer() external view returns (uint256);
}

interface IUSDT {
    function approve(address _spender, uint256 _value) external;
}