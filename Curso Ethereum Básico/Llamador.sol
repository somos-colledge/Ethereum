pragma solidity ^0.4.6;

contract Llamador {
    function obtenerDobleConInterface(address addr) public view returns(uint) {
        ListaNumerosInterface contrato = ListaNumerosInterface(addr);
        return contrato.obtenerDoble(100);
    }
    
    function insertarValorConInterface(address addr) public returns(uint) {
        ListaNumerosInterface contrato = ListaNumerosInterface(addr);
        contrato.insertarValor(100);
        return contrato.obtenerCantidadValores();
    }
    
    function insertarValorSinInterface(address addr) public {
        addr.call(bytes4(keccak256("insertarValor(uint256)")), 100);
    }
}

contract ListaNumerosInterface {
    function obtenerDoble(uint inicial) public returns(uint);
    function insertarValor(uint valor) public;
    function obtenerCantidadValores() public returns(uint);
}