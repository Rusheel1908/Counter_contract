// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
   uint256 public count;
   // set value of count
   constructor  (uint256 _initialVal) {
    count = _initialVal;
   }
   // Increment
   function increment () public {
    count += 1;
   }
   // decrement
   function decrement () public {
    count -= 1;
   }
   //setZero
   function setZero () public {
    count = 0;
   }
   // check value of count
   function getCount () public view returns(uint256) {
    return count;
   }
}
