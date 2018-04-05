pragma solidity ^0.4.17;

import "./Ownable.sol";

contract Adoption is Ownable {
    address[16] private adopters;

    function () public payable {

    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function adopt(uint petId) public payable returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}