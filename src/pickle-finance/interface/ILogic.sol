pragma solidity 0.6.0;
pragma experimental ABIEncoderV2;

interface IController {
    function swapExactJarForJar(
        address _fromJar,
        address _toJar,
        uint256 _fromJarAmount,
        uint256 _toJarMinAmount,
        address[] calldata _targets,
        bytes[] calldata _data
    ) external;
}

interface IStrategy {
    function getSuppliedUnleveraged() external returns (uint256);
}

interface ICurveProxy {
    function add_liquidity(
        address curve,
        bytes4 curveFunctionSig,
        uint256 curvePoolSize,
        uint256 curveUnderlyingIndex,
        address underlying
    ) external;
}
