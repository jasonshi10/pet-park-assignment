//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract PetPark {

    uint AnimalType;
    uint Age;
    uint Gender;
    uint Count;
    address contractOwner;

    event Added(uint AnimalType, uint AnimalCount);
    event Borrowed(uint AnimalType);
    event Returned(uint AnimalType);

    constructor() {
    contractOwner = msg.sender;
    }

    struct AnimalType {
        string Animal;
        uint number;
    }

    Animals[] animals;

    Animals Fish = Animals("Fish", 1)

  function add(AnimalType, Count) {
    require(msg.sender == contractOwner, "Not an owner");
    require(AnimalType "Invalid animal");

    emit Added(AnimalType, AnimalCount);
  };

  function borrow(Age, Gender, AnimalType) {
    emit Borrowed(AnimalType);
  };

  function giveBackAnimal() {
    emit Returned(AnimalType);
  };
}
