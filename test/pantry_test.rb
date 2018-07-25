require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_pantry_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_pantry_starts_empty
    pantry = Pantry.new
    expected = {}

    assert_equal expected, pantry.stock
  end

  def test_pantry_stock_can_be_checked
    pantry = Pantry.new

    assert_equal 0, pantry.stock_check("Cheese")
  end

  def test_if_pantry_can_be_restocked
    pantry = Pantry.new
    pantry.restock("Cheese", 10)

    assert_equal 10, pantry.stock_check("Cheese")

    pantry.restock("Cheese", 20)

    assert_equal 30, pantry.stock_check("Cheese")

  end
end
