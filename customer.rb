class Customer
  attr_reader :name, :wallet, :age
  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end
  def buys_drink(price)
    @wallet - price
  end
end
