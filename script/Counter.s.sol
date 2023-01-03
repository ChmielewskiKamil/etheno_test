// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("GANACHE_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        Counter counter = new Counter();
        vm.stopBroadcast();
    }
}
