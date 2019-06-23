pragma solidity >=0.4.21 <0.6.0;

import './node_modules/openzeppelin-solidity/contracts/token/ERC20Mintable.sol';
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/VirtualExchange.sol";

contract TestVirtualToken {
    object = "something";
    uint expectedObjectId = 296;
    address expectedOwner = address(this);
    function testUserCanPurchase() public {
        uint returnedId = object.obtain(expectedObjectId);
        Assert.equal(returnedId,expectedObjectId,"These do not match")
    }
    function testGetOwnerAddressByObjectId() public {
        address owner = object.owner(expectedOwner);
        Assert.equal(owner, expectedOwner, "Owner should actually own the object");
    }
    function testGetOwnerAddressByObjectIdInArray() public {
        address[16] memory owners = object.getOwners();
        Assert.equal(objects[expectedObjectId], expectedOwner, "Owner should own object");
    }
}
