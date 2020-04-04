pragma solidity >=0.4.21 <0.7.0;

contract Adopcion {
  address[16] public adopters;

  // adopting a pet
  function adopt (uint petId) public returns(uint) {
    require(petId >= 0 && petId <= 15, "La mascota no tiene un identificador válido");

    adopters[petId] = msg.sender;

    return petId;
  }

  //Retrieving the adopters
  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }
}