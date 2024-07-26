// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddTen is SimpleStorage{
    function store(uint256 _favoriteNumber) public override  {
        myFavoriteNumber = _favoriteNumber+10;//myFavouriteNumber is also accessible as contract is inherited
    }
}