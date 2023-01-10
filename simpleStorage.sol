//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; 

contract simplestorage {
    
    // create a global variable 
    uint256 favoritenumber;

    // create a mapping variable and map strings to integers
    mapping(string => uint256) public nameToFavoriteNumber;

    // create an array 
    struct People {
        uint256 favoritenumber;
        string name;
    }

    // create an array variable
    People[] public people;

    // create a function named store to save input
    // virtual keyword indicates the function can be overridden from another contract
    function store(uint256  _favoritenumber) public virtual{
        favoritenumber = _favoritenumber;
    }

    // updates people array variable and mapping variable
   function addPeople(string memory _name, uint256 _favoritenumber) public{
    //    .push is to add to an array
       people.push(People(_favoritenumber,_name));
       nameToFavoriteNumber[_name] = _favoritenumber;
   }

    // creates a call function
   function retrieve() public view returns (uint256){
       return favoritenumber;
   }
}