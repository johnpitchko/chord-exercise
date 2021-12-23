const Location = require("../lib/models/location").Location;
const Product = require("../lib/models/product").Product;

var exports = (module.exports = {});

exports.mintDeo = new Product("underarms", 101, "Tea Tree Mint Deo");
exports.antichafe = new Product("thighs", 128, "Anti-Chafe Stick");
exports.bodyPowder = new Product("feet", 122, "Body Powder");
exports.freshWoodDeo = new Product("underarms", 395, "Fresh Wood Deo");
exports.antiperspirant = new Product("underarms", 910, "Antiperspirant");
exports.bodyWipes = new Product("feet", 42, "Body Wipes");

exports.newYork = new Location("New York City", "USA", 1, "New York");
exports.montreal = new Location("Montreal", "Canada", 2, "Quebec");
exports.sanFrancisco = new Location("San Diego", "USA", 3, "California");
exports.losAngeles = new Location("Los Angeles", "USA", 4, "California");

exports.locations = [
  exports.newYork,
  exports.montreal,
  exports.sanFrancisco,
  exports.losAngeles
];
