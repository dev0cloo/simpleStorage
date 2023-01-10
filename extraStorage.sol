// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./simplestorage.sol";

// creates a child contract of simplestorage
contract extrastorage is simplestorage {

    // overrides the store function from simplestorage
    // store function in simplestorage needs to have virtual keyword for override to work
    function store(uint256 _favoritenumber) public override{
        favoritenumber = _favoritenumber + 5;
    }
} 