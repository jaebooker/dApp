pragma solidity >=0.4.21 <0.6.0;


import './node_modules/openzeppelin-solidity/contracts/token/ERC20Mintable.sol';

contract HashnodeToken is MintableToken {
  string public name = "Hashnode Token";
  string public symbol = "HT";
  uint8 public decimals = 18;
}
