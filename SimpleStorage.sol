// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // this is the solidity version

contract SimpleStorage {
  // favoriteNumber gets initialized to 0 if no value is given

  uint256 public favoriteNumber; // 0

  function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
  }

  // view, pure
  function retreive() public view returns(uint256) {
    return favoriteNumber;
  }

}