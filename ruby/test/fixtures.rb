module Exercise
  module Fixtures
    def self.mint_deo
      Product.new(
        category: 'underarms',
        id: 101,
        name: 'Tea Tree Mint Deo'
      )
    end

    def self.antichafe
      Product.new(
        category: 'thighs',
        id: 128,
        name: 'Anti-Chafe Stick'
      )
    end

    def self.body_powder
      Product.new(
        category: 'feet',
        id: 122,
        name: 'Body Powder'
      )
    end

    def self.fresh_wood_deo
      Product.new(
        category: 'underarms',
        id: 395,
        name: 'Fresh Wood Deo'
      )
    end

    def self.antiperspirant
      Product.new(
        category: 'underarms',
        id: 910,
        name: 'Antiperspirant'
      )
    end

    def self.body_wipes
      Product.new(
        category: 'body',
        id: 42,
        name: 'Body Wipes'
      )
    end

    def self.new_york
      Location.new(
        city: 'New York City',
        country: 'USA',
        id: 1,
        state: 'New York'
      )
    end

    def self.montreal
      Location.new(
        city: 'Montreal',
        country: 'Canada',
        id: 2,
        state: 'Quebec'
      )
    end

    def self.san_francisco
      Location.new(
        city: 'San Francisco',
        country: 'USA',
        id: 3,
        state: 'California'
      )
    end

    def self.los_angeles
      Location.new(
        city: 'Los Angeles',
        country: 'USA',
        id: 4,
        state: 'California'
      )
    end

    def self.locations
      [new_york, montreal, san_francisco, los_angeles]
    end
  end
end
