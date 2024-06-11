// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function test_expect_revert_bytes_4_selector_only_partial_match() public {
        vm.expectRevert(Counter.CustomError.selector);
        counter.increment();
    }

    function test_expect_revert_bytes_memory_full_match() public {
        uint256 amount = 777;
        vm.expectRevert(abi.encodePacked(Counter.CustomError.selector, amount));
        counter.increment();
    }
}
