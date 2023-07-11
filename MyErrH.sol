
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyErrH { //my error handling

    uint public num;

        function requireFunc(uint _num) public {
            require(_num > 100, "Value must be more than 100"); //require function 
            num = _num;
        }

        function revertFunc(uint _num) public {
            if (_num == num) {
                num = 0;
                revert("Value must be different"); //revert function
            }
        }

        function assertFunc() public {
            assert(num == num);
            num = 500; //assert function
        }
    }
