class Pub
  attr_reader :name, :till, :cellar
  def initialize(name, till, cellar)
    @name = name
    @till = till
    @cellar = []
  end
  def cellar_count(cellar)
    return cellar.count
  end
  def  sell_drink(drink_price)
    @cellar.shift()
    @till + drink_price
  end
  def
# a method that takes in a customer and a drink
# the customer buys the drink
# the pub sells the drink3

end
