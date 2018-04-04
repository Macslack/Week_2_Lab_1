
class Pub #defining our class
  attr_reader :name, :till, :cellar # these are our getters
  def initialize(name, till, cellar) # setting out the parameters of the blueprint
    @name = name #a parameter of our blueprint
    @till = till#a parameter of our blueprint
    @cellar = []#a parameter of our blueprint
  end
  def cellar_count(cellar)# a fuction to give a count of objects in our cellar array
    return cellar.count
  end
  def  payment_recived(drink_price)
    @till + drink_price# a function to increase the till by drink price
  end
  def drink_given(cellar)
     cellar.shift()# a function to takes a drink from the array then returns the length of the cellar array
     return cellar.count
  end
  def customer_order(customer, price)
    customer.buys_drink(price)
  end# a function that takes two aguments a instance of customer and price
#calls function buy_drink from the customer class
# a method that takes in a customer and a drink
# the customer buys the drink
# the pub sells the drink3

end
