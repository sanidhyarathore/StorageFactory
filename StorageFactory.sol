// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public ListOfSimpleStorageContract;
    function CreateNewContract() public {
        SimpleStorage NewSimpleStorage = new SimpleStorage();
        ListOfSimpleStorageContract.push(NewSimpleStorage);
    }

    function sfstore(uint256 _SimpleStorageIndex, uint256 _SimpleStorageNumber) public{
        SimpleStorage newcontract = ListOfSimpleStorageContract[_SimpleStorageIndex];
        newcontract.store(_SimpleStorageNumber);
    }

    function sfGet(uint256 _SimpleStorageIndex) public view returns(uint256){
        SimpleStorage newcontract = ListOfSimpleStorageContract[_SimpleStorageIndex];
        return newcontract.retrieve();
    }
} 
