// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.19;

contract SimpleStorage {
    uint num;

    function store(uint _num) public {
        num = _num;
    }

    function get() public view returns (uint) {
        return num;
    }
}
