// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { SimpleStorage } from "./simple_storage.sol";


contract StorageFactory {
    SimpleStorage public simpleStorage;

    SimpleStorage[] public listOfSimpleStorageContracts;

    // Creating another contract in this contract
    function createSimpleStorageContract() public {
        // simpleStorage = new SimpleStorage();
        SimpleStorage mySimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(mySimpleStorageContract);
    }


    function storeValue(uint256 _contractIndex, uint256 _contractValue) public {
       SimpleStorage mySimpleStorage =  listOfSimpleStorageContracts[_contractIndex]; 
        mySimpleStorage.store(_contractValue, "User");
    }

    function getValue(uint256 _contractIndex) public view returns(uint256) {  
        return listOfSimpleStorageContracts[_contractIndex].retrieve();
    }

}