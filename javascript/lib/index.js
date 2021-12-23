var exports = (module.exports = {});

/**
 * Change this to return 'Welcome!' to fix the first failing test. Run `make test`
 * to confirm that `001 welcome` passes, then repeat for each of the
 * remaining tests.
 */
exports.welcome = () => {
  // return "Welcome!";
};
/**
 * Rturns an array of ids for all products in the 'underarms' collection.
 *
 * Results should be returned in ascending order.
 */
exports.selectIdsOfUnderarmsCollectionProducts = (products) => {};

/**
   * Each order has a baseTotal, shippingTotal, and
  taxTotal. Adding these
   * together gives the amount a customer was charged for an order.
   *
   * Given an array of orders, calculate the total that was charged for all
   * the orders combined.
   *
   * orders: [Order]
   * returns: Number
   */
exports.totalAmountFromOrders = (orders) => {};

/**
   * Each order belongs to a user
  , and each user has a location. From a list
   * of orders, determine the state of the location with the highest number
   * of orders.
   *
   * locations: [Location]
   * orders: [Order]
   * users: [User]
   * returns: String
   */
exports.stateWithMostOrders = (locations, orders, users) => {};

/*
   * Given a list of products, generate a formatt
  ed message
   * to present to the user with product names. Example strings:
   *
   * "Goes well with A"
   * "Goes well with A and B"
   * "Goes well with A, B, and C"
   *
   * products: [Product]
   * returns: String
   */
exports.sweatCollection = (products) => {};
