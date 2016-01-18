require_relative '../test_case'

class ShoppingCartTest < Test::Unit::TestCase
  def test_empty_cart
    assert_equal 0, price('')
  end

  def test_single_item
    assert_equal 50, price('A')
  end

  def test_two_different_items
    assert_equal 80, price('AB')
  end

  def test_all_different_items
    assert_equal 115, price('CDBA')
  end

  def test_double_item
    assert_equal 100, price('AA')
  end

  def test_special_offer_for_A
    assert_equal 130, price('AAA')
  end

  def test_two_special_offers
    assert_equal 175, price('AAABB')
  end

  def price(items)
    ShoppingCart.new(items).total_price
  end
end