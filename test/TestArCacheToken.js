
var ArCacheToken = artifacts.require("ArCacheToken");

contract('ArCacheToken', function(accounts){

  it("should put 1000 coins in the owners account", function(){
    return ArCacheToken.deployed().then(function(instance){
      return instance.balance.call(accounts[0]);
    }).then(function(balance){
      assert.equal(balance.valueOf(), 1000, "1000 wasn't in the account");
    });
  });

  it("should return the name Filip", function(){
    return ArCacheToken.deployed().then(function(instance){
      return instance.getName.call();
    }).then(function(name){
      assert.equal(name, "", "the name was not");
    });
  });

  it("should return the name Bob", function(){
    return ArCacheToken.deployed().then(function(instance){
      return instance.setName('B').then(function(){
        return instance.getName.call();
      }).then(function(name){
        assert.equal(name, "Bob", "the name was not Bob");
      });
    });
  });
});
