pragma solidity 0.8.13;

import {IFlashLoanReceiver} from "./interfaces/IFlashLoanReceiver.sol";
import {ILendingPoolAddressesProvider} from "./interfaces/ILendingPoolAddressesProvider.sol";
import {ILendingPool} from "./interfaces/ILendingPool.sol";
import {IERC20} from "./interfaces/IERC20.sol";
abstract contract FlashLoanReceiverBase is IFlashLoanReceiver {

    ILendingPoolAddressesProvider public immutable override ADDRESSES_PROVIDER;
    ILendingPool public immutable override LENDING_POOL;

    constructor(ILendingPoolAddressesProvider provider) {
        ADDRESSES_PROVIDER = provider;
        LENDING_POOL = ILendingPool(provider.getLendingPool());
    }
}