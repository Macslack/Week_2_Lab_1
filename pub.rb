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
  


end
