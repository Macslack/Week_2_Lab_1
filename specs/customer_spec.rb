require("minitest/autorun")
require ("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test
  def setup()
    @price1 = 15
    @customer = Customer.new("Upul", 30.0, 18)
    @drink1 = Drink.new("Cider", @price1)
    @drink2 = Drink.new("Wine", 12.0)
    @drink3 = Drink.new("Beer", 20.0)
    @cellar = [@drink1, @drink2, @drink3]
    @pub = Pub.new("The Ivy", 10.0, @cellar)
  end
  def test_get_customer_name
    assert_equal("Upul", @customer.name)
  end
  def test_cash_in_wallet
    assert_equal(30.0, @customer.wallet)
  end
  def test_customer_buys_drink
    assert_equal(15.0, @customer.buys_drink(@price1))
  end
  def test_customer_age
    assert_equal(18, @customer.age)
  end


end
