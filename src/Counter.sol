// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    error CustomError(uint256 amount);

    function increment() pure public {
        uint256 amount = 777;
        revert CustomError(amount);
    }
}
