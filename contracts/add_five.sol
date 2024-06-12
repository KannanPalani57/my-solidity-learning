// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { SimpleStorage } from "./simple_storage.sol";


contract AddFive is SimpleStorage {

    function store(uint256 _favoriteNumber, string memory _name ) public override  {
        favoriteNumber = _favoriteNumber + 5;

        listOfPeople.push( Person({
            favNumber: _favoriteNumber, 
            name: _name 
        }));
    }


}