require("minitest/autorun")
require ("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test
def setup()
  @customer = Customer.new("Upal", 30.0)
  @drink1 = Drink.new("Cider", 15.0)
  @drink2 = Drink.new("Wine", 12.0)
  @drink3 = Drink.new("Beer", 20.0)
  @cellar = [@drink1, @drink2, @drink3]
  @pub = Pub.new("The Ivy", 10.0, @cellar)
end
def test_get_customer_name
  assert_equal("Upal", @customer.name)
end
end
