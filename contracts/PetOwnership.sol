pragma solidity ^0.4.17;

import "./PetFactory.sol";
import "./SafeMath.sol";
import "./ERC721.sol";


contract PetOwnerShip is PetFactory, ERC721 {
    mapping (uint => address) petApprovals;

    function blanceOf(address _owner) public view returns (uint256 _balance) {
        return ownerPetCount[_owner];
    }
}
