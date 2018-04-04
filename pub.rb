
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

  def customer_over_18(age)
    return true if age >= 18
    return false if age < 18
  end

  def  payment_recived(drink_price)
    #if customer_over_18 == true
      @till + drink_price# a function to increase the till by drink price
    #else return "You're not old enough"
    #end
  end
  def drink_given(cellar)
     cellar.shift()# a function to takes a drink from the array then returns the length of the cellar array
     return cellar.count
  end
  def customer_order(customer, price, age)
    if customer_over_18(age) == true
    customer.buys_drink(price)
    else return "You're not old enough"
    end
  end# a function that takes two aguments a instance of customer and price


end
