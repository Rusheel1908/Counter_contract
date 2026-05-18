// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {

    function run() external {

        vm.startBroadcast();

        new Counter(5);

        vm.stopBroadcast();
    }
}