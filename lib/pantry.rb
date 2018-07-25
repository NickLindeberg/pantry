require 'pry'

class Pantry
  attr_reader :stock


  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    @stock.values do |quantity|
      @stock.values += @stock.values
    end.join.to_i
  end

#i know there needs to be some sort of map or inject iteration around here somewhere.

  def restock(ingredient, quantity)
    @stock = {ingredient => quantity}

  end

end
