require 'pry'

class Pantry
  attr_reader :stock


  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    @stock.values.join.to_i

  end

  def restock(ingredient, quantity)
    @stock = {ingredient => quantity}
  end

  # def restock(ingredient, quantity)
  #   @stock_total.inject({}) do |key, value|
  #     key[ingredient] = value.quantity
  #   end
  # end

end
