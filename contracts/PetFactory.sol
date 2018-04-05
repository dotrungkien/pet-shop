pragma solidity ^0.4.17;

import "./Ownable.sol";
import "./SafeMath.sol";


contract PetFactory is Ownable {
    event NewPet(uint petId);

    struct Pet {
        uint id;
        string name;
        string picture;
        uint age;
        uint price;
        string breed;
        string location;
    }

    Pet[] public pets;

    mapping (uint => address) public petToOwner;
    mapping (address => uint) public ownerPetCount;
}
