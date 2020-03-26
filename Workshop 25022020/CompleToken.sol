pragma solidity ^0.6;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20Burnable.sol";

contract CompleToken {
    
    int public totalSupply;
    string public codigo;
    mapping(address=>int) saldos;
    address public owner;
    
    modifier onlyOwner {
        require(msg.sender==owner,"No erees el duegno del contrato");
        _;
    } 
    
    constructor(string memory _codigo, int _supply) public {
        owner = msg.sender;
        totalSupply= _supply;
        codigo = _codigo;
    }
    
    function mint(address destino, int monto) onlyOwner public {
        saldos[destino] = saldos[destino] + monto;
    }
 
    function consultarSaldo(address consulta) public view returns(int _saldo) {
        return saldos[consulta];
    }    
}