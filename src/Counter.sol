// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    // uint256 public number;

    // function setNumber(uint256 newNumber) public {
    //     number = newNumber;
    // }

    // function increment() public {
    //     number++;
    // }
    int private count;

    constructor (int _count) {
      count = _count;
    }

    function incrementCounter() public {
      count += 1;
    }

    function decrementCounter() public {
      count -= 1;
    }

    function getCount() public view returns (int) {
      return count;
    }
}
