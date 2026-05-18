// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp () public {
        counter = new Counter(3);
    }

    function testInitialVal () public view{
        assertEq(counter.getCount(),3);
    }
    function testIncrement () public {
        counter.increment();
        assertEq(counter.getCount(),4);
    }
    function testDecrement () public {
        counter.decrement();
        assertEq(counter.getCount(),2);
    }
    function testSetZero () public {
        counter.setZero();
        assertEq(counter.getCount(),0);
    }

}