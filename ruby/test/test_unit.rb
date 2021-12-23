$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require_relative './test_base'

module Exercise
  class TestExercise < TestBase
    def test_001_welcome
      assert_equal 'Welcome!', Exercise.welcome
    end

    def test_002_select_ids_of_underarms_category_products
      products = [
        Fixtures.antiperspirant,
        Fixtures.antichafe,
        Fixtures.fresh_wood_deo,
        Fixtures.mint_deo
      ]

      assert_equal [101, 395, 910], Exercise.select_ids_of_underarms_category_products(products)
    end

    def test_003_total_amount_from_orders
      orders = [
        Order.new(base_total: 25, shipping_total: 5, tax_total: 2, user_id: 901),
        Order.new(base_total: 25, shipping_total: 5, tax_total: 2, user_id: 7),
        Order.new(base_total: 95, shipping_total: 20, tax_total: 15, user_id: 335),
        Order.new(base_total: 5, shipping_total: 0, tax_total: 0, user_id: 866),
        Order.new(base_total: 25, shipping_total: 5, tax_total: 2, user_id: 717)
      ]

      assert_equal 231, Exercise.total_amount_from_orders(orders)
    end

    def test_004_state_with_most_orders
      users = [
        User.new(id: 1, name: 'Lorraine Brady', location_id: Fixtures.montreal.id),
        User.new(id: 2, name: 'Allison Dunn', location_id: Fixtures.los_angeles.id),
        User.new(id: 3, name: 'Sharon Decker', location_id: Fixtures.new_york.id),
        User.new(id: 4, name: 'Otto Ibarra', location_id: Fixtures.montreal.id)
      ]

      orders = [
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 1),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 2),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 2),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 2),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 3),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 4)
      ]

      assert_equal(
        'California',
        Exercise.state_with_most_orders(
          locations: Fixtures.locations,
          orders: orders,
          users: users
        )
      )
    end

    def test_005_format_offer_with_one_product
      products = [Fixtures.antichafe]
      assert_equal 'Goes well with Anti-Chafe Stick', Exercise.format_collection(products)
    end

    def test_006_format_offer_with_two_products
      products = [Fixtures.antichafe, Fixtures.body_powder]
      assert_equal(
        'Goes well with Anti-Chafe Stick and Body Powder',
        Exercise.format_collection(products)
      )
    end

    def test_007_format_offer_with_many_products
      products = [
        Fixtures.antichafe,
        Fixtures.body_powder,
        Fixtures.body_wipes,
        Fixtures.fresh_wood_deo
      ]

      assert_equal(
        'Goes well with Anti-Chafe Stick, Body Powder, Body Wipes, and Fresh Wood Deo',
        Exercise.format_collection(products)
      )
    end

    def test_008_format_offer_with_no_products
      assert_equal('', Exercise.format_collection([]))
    end
  end
end
