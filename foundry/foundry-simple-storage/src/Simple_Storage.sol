// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    uint256 public favoriteNumber; 

    mapping(string => uint256) public nameOfFavNum;

    struct Person {
        uint256 favNumber;
        string name;
    }

    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber, string memory _name) public {
        favoriteNumber = _favoriteNumber;
        
        nameOfFavNum[_name] = _favoriteNumber;

        listOfPeople.push( Person({
            favNumber: _favoriteNumber, 
            name: _name 
        }));
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    
}