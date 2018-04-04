require("minitest/autorun") #pull in minitest/autorun
require ("minitest/rg")   #formating terminal output
require_relative("../pub.rb") # tell it the pub file exist
require_relative("../drink.rb")# tell it the drink file exist
require_relative("../customer.rb") # tell it the customer file exist
class TestPub < MiniTest::Test # declaring the test class
  def setup() # setting up instances to test against
    @age1 = 18
    @age2 = 17
    @customer = Customer.new("Upul", 20.0, @age1) #instance of customer class
    @price1 = 15.0 # example of price
    @drink1 = Drink.new("Cider", @price1)# instance of the drink class
    @drink2 = Drink.new("Wine", 12.0)# instance of the drink class
    @drink3 = Drink.new("Beer", 20.0)# instance of the drink class
    @cellar = [@drink1, @drink2, @drink3]# a array of drink instances
    @pub = Pub.new("The Ivy", 10.0, @cellar)# a instance of the pub class
  end

  def test_get_pub_name()#test to check our name getter
    assert_equal("The Ivy", @pub.name)
  end
  def test_get_pub_till()#test to check our till getter
    assert_equal(10.0, @pub.till)
  end
  def test_if_cellar_is__empty()# test to check that cellar is empty
    assert_equal([], @pub.cellar)
  end
  def test_cellar_count()#test to check that the cellar is filled correctly
    assert_equal(3, @pub.cellar_count(@cellar))
  end
  def test_sell_drink__payment_recieved()#test to check that till is filling
    assert_equal(25.0, @pub.payment_recived(@price1))
  end
  def test_sell_drink__drink_given()#test that cellar is decreasing after selling
    assert_equal(2, @pub.drink_given(@cellar))
  end
  def test_sell_drink__take_order()# test that the Customer is paying for drink
    assert_equal(5.0, @pub.customer_order(@customer, @price1, @age1))
  end
  def test_customer_over_18()
    assert_equal(true, @pub.customer_over_18(@age1))
  end
  def test_customer_under_18()
    assert_equal(false, @pub.customer_over_18(@age2))
  end
end
# a method that takes in a customer and a drink
# the customer buys the drink
# the pub sells the drink3
