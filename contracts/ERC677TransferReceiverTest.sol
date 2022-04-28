
  
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC677TransferReceiver.sol";


contract ERC677TransferReceiverTest is IERC677TransferReceiver {
  event Test(address from, uint256 amount, bytes data);

  function tokenFallback(
    address from,
    uint256 amount,
    bytes calldata data
  ) external override returns (bool) {
    emit Test(from, amount, data);
    return true;
  }
}