var Adopcion = artifacts.require("Adopcion");

module.exports = function(deployer) {
  deployer.deploy(Adopcion);
};