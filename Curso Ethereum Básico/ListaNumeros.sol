pragma solidity ^0.4.6;

contract ListaNumeros {
    uint[] public numeros;

    function obtenerDoble(uint inicial) public pure returns(uint) {
        return inicial * 2;
    }
    function insertarValor(uint valor) public {
        numeros.push(valor);
    }
    function obtenerCantidadValores() public view returns(uint) {
        return numeros.length;
    }
}