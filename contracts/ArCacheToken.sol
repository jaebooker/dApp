pragma solidity >=0.4.21 <0.6.0;

import './node_modules/openzeppelin-solidity/contracts/token/ERC20Mintable.sol';

contract ArCacheToken is MintableToken {
  string public name = "ArCache Token";
  string public symbol = "ARCT";
}
