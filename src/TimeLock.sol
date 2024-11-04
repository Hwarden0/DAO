// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

abstract contract TimeLock is TimelockController {
    // minDelay is how long you have to wait before executing
    // proposers is the list of addresses who can propose
    // executors is the list of addresses who can execute
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
        
    ) 
        TimelockController(minDelay, proposers, executors, msg.sender) // Correctly pass arguments to the base constructor
    {}
}
