class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    @stock.find_all do |ingredient|
      ingredient.key
    end.count
  end

end
