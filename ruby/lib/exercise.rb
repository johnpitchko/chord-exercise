module Exercise
  # Fix the first failing test by uncommenting the body of this method. Run
  # `make test` to confirm that `test_001_welcome` passes, then continue until
  # all tests pass.
  #
  # returns: String
  def self.welcome
    'Welcome!'
  end

  # Returns an array of ids for all products in the 'underarms' collection.
  #
  # Results should be returned in ascending order.
  #
  # products: [Product]
  # returns: [Number]
  def self.select_ids_of_underarms_category_products(products)
    products.select{ |p| p.category == 'underarms'}.map(&:id).sort
  end

  # Each order has a base_total, shipping_total, and tax_total. Adding these
  # together gives the amount a customer was charged for an order.
  #
  # Given an array of orders, calculate the total that was charged for all
  # the orders combined.
  #
  # orders: [Order]
  # returns: Number
  def self.total_amount_from_orders(orders)
    orders.map{ |o| [o.base_total, o.shipping_total, o.tax_total].sum}.sum
  end

  # Each order belongs to a user, and each user has a location. From a list
  # of orders, determine the state of the location with the highest number of
  # orders.
  #
  # locations: [Location]
  # orders: [Order]
  # users: [User]
  # returns: String
  def self.state_with_most_orders(locations:, orders:, users:)
    count = {}

    orders.each do |o|
      x = users.find{ |u| u.id == o.user_id }.location_id
      count[x] = 0 unless count[x]
      count[x] += 1
    end

    y = count.max_by{|k,v| v}[0]
    locations.find{ |l| l.id == y }
  end

  # Given a list of products, generate a formatted message
  # to present to the user with product names. Example strings:
  #
  # 'Goes well with A'
  # 'Goes well with A and B'
  # 'Goes well with A, B, and C'
  #
  # products: [Product]
  # returns: String
  def self.format_collection(products)
  end
end
