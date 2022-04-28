const ERC677 = artifacts.require("ERC677");

module.exports = function(deployer, _, accounts) {
  deployer.deploy(
    ERC677,
    accounts[0],
    web3.utils.toBN('201000000000000000000000000000'),
    'CSD',
    'CSD',
  );
};