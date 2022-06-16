pragma solidity 0.8.13;

interface ICurve {
    function add_liquidity(uint256[3] memory _amounts, uint256 min_mint_amount)
        external;

    function calc_token_amount(uint256[3] memory amounts, bool deposit)
        external
        returns (uint256);

    function calc_token_amount(uint256[2] memory amounts, bool deposit)
        external
        returns (uint256);

    function remove_liquidity_one_coin(
        uint256 _token_amount,
        int128 i,
        uint256 min_amount
    ) external;

    function exchange(
        int128 i,
        int128 j,
        uint256 dx,
        uint256 min_dy
    ) external returns (uint256);

    function exchange(
        address,
        address,
        address,
        uint256,
        uint256,
        address
    ) external returns (uint256);

    function get_dy(
        int128 i,
        int128 j,
        uint256 dx
    ) external view returns (uint256);
}
