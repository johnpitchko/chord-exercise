var exports = (module.exports = {});

/**
 * collection: String
 *   The collection that the product belongs to, e.g.: underarms, feet.
 * id: Number
 *   The unique id of the product.
 * name: String
 *   The name of the product.
 */
exports.Product = class Product {
  constructor(collection, id, name) {
    this.collection = collection;
    this.id = id;
    this.name = name;
  }
};
