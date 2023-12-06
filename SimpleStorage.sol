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

  // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
  // Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
  // Person public jon = Person({favoriteNumber: 12, name: "Jon"});

  function store(uint256 _favoriteNumber) public {
    myFavoriteNumber = _favoriteNumber;
  }

  // view, pure
  function retreive() public view returns(uint256) {
    return myFavoriteNumber;
  }

  function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listOfPeople.push(Person(_favoriteNumber, _name));
  }

}