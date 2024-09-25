// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 num;

    function store(uint256 _num) public {
        num = _num;
    }

    function get() public view returns (uint256) {
        return num;
    }
}
