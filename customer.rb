class Customer 
  attr_reader :name, :wallet
  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end
  def buys_drink(price)
    @wallet - price
  end
end
