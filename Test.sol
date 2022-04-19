//SPDX-License-Modifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Counter {
    uint public  count = 0;

    event Increment(uint value);
    event Decrement(uint value);

    // constructor() public {
    //     count =0;
    // }
        function getCount() view public returns(uint) {
        return count;
    }

    function increment() public {
        count += 1;
        emit Increment(count);

    }

    function decrement() public {
        count -= 1;
        emit Decrement(count);

    }
}