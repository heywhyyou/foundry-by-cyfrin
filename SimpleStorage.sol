// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // this is the solidity version

contract SimpleStorage {
  // favoriteNumber gets initialized to 0 if no value is given

  uint256 myFavoriteNumber; // 0

  uint256[] listOfFavoriteNumbers;

  struct Person {
    uint256 favoriteNumber;
    string name;
  }

  // dynamic array (its size can grow and shrink)
  Person[] public listOfPeople; // []

  // chelsea -> 232 (just an example)
  mapping(string => uint256) public nameToFavoriteNumber;

  function store(uint256 _favoriteNumber) public virtual {
    myFavoriteNumber = _favoriteNumber;
  }

  // view, pure
  function retreive() public view returns(uint256) {
    return myFavoriteNumber;
  }

  // calldata, memory, storage
  function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listOfPeople.push(Person(_favoriteNumber, _name));
    nameToFavoriteNumber[_name] = _favoriteNumber;
  }

}