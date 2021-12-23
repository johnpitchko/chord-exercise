const exercise = require("../lib");
const Order = require("../lib/models/order");
const User = require("../lib/models/user");
const fixtures = require("./fixtures");

it("001 welcome", () => {
  expect(exercise.welcome()).toBe("Welcome!");
});

it("002 select ids of skincare category products", () => {
  const products = [
    fixtures.antiperspirant,
    fixtures.antichafe,
    fixtures.freshWoodDeo,
    fixtures.mintDeo
  ];

  expect(exercise.selectIdsOfUnderarmsCollectionProducts(products)).toEqual([
    101, 395, 910
  ]);
});

it("003 total amount from orders", () => {
  const orders = [
    new Order(25, 5, 2, 901),
    new Order(25, 5, 2, 7),
    new Order(95, 20, 15, 335),
    new Order(5, 0, 0, 866),
    new Order(25, 5, 2, 717)
  ];

  expect(exercise.totalAmountFromOrders(orders)).toEqual(231);
});

it("004 state with most orders", () => {
  const users = [
    new User(1, "Catarina Chayka", fixtures.montreal.id),
    new User(2, "Katalin Loris", fixtures.losAngeles.id),
    new User(3, "Lilia Klerks", fixtures.newYork.id),
    new User(4, "Pat Tachibana", fixtures.montreal.id)
  ];

  const orders = [
    new Order(1, 1, 1, 1),
    new Order(1, 1, 1, 2),
    new Order(1, 1, 1, 2),
    new Order(1, 1, 1, 2),
    new Order(1, 1, 1, 3),
    new Order(1, 1, 1, 4)
  ];

  expect(
    exercise.stateWithMostOrders(fixtures.locations, orders, users)
  ).toEqual("California");
});

it("005 format offer with one product", () => {
  const products = [fixtures.antichafe];
  expect(exercise.sweatCollection(products)).toEqual(
    "Goes well with Anti-Chafe Stick"
  );
});

it("006 format offer with two products", () => {
  const products = [fixtures.antichafe, fixtures.bodyPowder];
  expect(exercise.sweatCollection(products)).toEqual(
    "Goes well with Anti-Chafe Stick and Body Powder"
  );
});

it("007 format offer with many products", () => {
  const products = [
    fixtures.antichafe,
    fixtures.bodyPowder,
    fixtures.bodyWipes,
    fixtures.freshWoodDeo
  ];

  expect(exercise.sweatCollection(products)).toEqual(
    "Goes well with Anti-Chafe Stick, Body Powder, Body Wipes, and Fresh Wood Deo"
  );
});

it("008 format offer with no products", () => {
  expect(exercise.sweatCollection([])).toEqual("");
});
