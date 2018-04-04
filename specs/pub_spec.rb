require("minitest/autorun")
require ("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")

class TestPub < MiniTest::Test
  def setup()
    @drink1 = Drink.new("Cider", 15.0)
    @drink2 = Drink.new("Wine", 12.0)
    @drink3 = Drink.new("Beer", 20.0)
    @cellar = [@drink1, @drink2, @drink3]
    @pub = Pub.new("The Ivy", 10.0, @cellar)
  end

  def test_get_pub_name()
    assert_equal("The Ivy", @pub.name)
  end
  def test_get_pub_till()
    assert_equal(10.0, @pub.till)
  end
  def test_if_cellar_is__empty()
    assert_equal([], @pub.cellar)
  end
  def test_cellar_count()
    assert_equal(3, @pub.cellar_count(@cellar))
  end
end
