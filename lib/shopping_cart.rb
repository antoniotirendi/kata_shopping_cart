class ShoppingCart
  def initialize(items)
    @total_price = 0
    @cart = fill_cart(items)
  end

  def fill_cart(items)
    @cart = {}
    items.each_char do |item|
      @cart[item] ? @cart[item] += 1 : @cart[item] = 1
    end
    @cart
  end

  def total_price
    @cart.each do |item, occurrences|
      while occurrences > 0
        if item_prices[item * occurrences]
          @total_price += item_prices[item * occurrences]
          occurrences = 0
        else
          @total_price += item_prices[item]
          occurrences -= 1
        end
      end
    end
    @total_price
  end

  def item_prices
    {'A' => 50,
     'B' => 30,
     'C' => 20,
     'D' => 15,
     'AAA' => 130,
     'BB' => 45}
  end
end