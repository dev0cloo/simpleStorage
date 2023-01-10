// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./simplestorage.sol";

contract storageFactory {
    simplestorage[] public Simplestoragearray;

// creates a new simple storage contract and adds the contract address to an array 
    function createsimplestorage() public{
        simplestorage Simplestorage = new simplestorage();
        Simplestoragearray.push(Simplestorage);
    }
// stores a number at a specificied contract
    function sfStore(uint256 _simplestorageindex, uint256 _simplefavorite) public{
      Simplestoragearray[_simplestorageindex].store(_simplefavorite);
    }

// retrieves a number from a specificied contract
    function sfGet(uint256 _simplestorageindex) public view returns (uint256){  
        return Simplestoragearray[_simplestorageindex].retrieve();
    }
}