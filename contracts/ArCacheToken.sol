pragma solidity >=0.4.21 <0.6.0;

import './node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol';

contract ArCacheToken is ERC721Token {
  constructor() ERC721("ArCache Token", "ARCT") public {}

  struct Object {
    uint8 texture;
    uint8 type;
  }

  Object[] objects;

  function mint() public {
    Object memory _object = Object(uint8(now), uint8(now-1000));
    uint _id = objects.push(_object) - 1;
    _mint(msg.sender, _id);
  }

  function getColorFromId(uint id) public view returns(uint8, uint8) {
    return (objects[id].texture, objects[id].type);
  }
}
