require './nesting'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class NestedTest < MiniTest::Test

  def test_list_of_olive_garden_employess
    #^^^ Un-Skip each test
    #=======================
    # EXAMPLE
    employees = stores[:olive_garden][:employees]
    #=======================
    assert_equal ["Jeff", "Zach", "Samantha"], employees
  end

  def test_pancake_ingredients

    #=======================
    pancake_ingredients = stores[:dennys][:dishes][0][:ingredients]
    #=======================
    assert_equal ["Flour", "Eggs", "Milk", "Syrup"], pancake_ingredients
  end

  def test_rissotto_price

    #=======================
    risotto_price = stores[:olive_garden][:dishes][0][:price]
    #=======================
    assert_equal 12, risotto_price
  end

  def test_big_mac_ingredients
    #=======================
    big_mac_ingredients = stores[:macdonalds][:dishes][0][:ingredients]
    #=======================
    assert_equal ['Bun','Hamburger','Ketchup','pickles'], big_mac_ingredients
  end

  def test_list_of_restaurants
    #=======================
    store_names = stores.keys
    #=======================
    assert_equal [:olive_garden, :dennys, :macdonalds], store_names
  end

  def test_list_of_dishes_names_for_olive_garden
    #=======================
    dishes_names = []
    stores[:olive_garden][:dishes].each do |dish|
      #require'pry';binding.pry
        dishes_names << dish[:name]
      end

    #=======================
    assert_equal ['Risotto', 'Steak'], dishes_names
  end

  def test_list_of_employees_across_all_restaurants
    #=======================
    exmployee_names_pre = []
    stores.each do |name, info|
        exmployee_names_pre << info[:employees]
    end
    exmployee_names = exmployee_names_pre.flatten
    #=======================
    assert_equal ["Jeff","Zach","Samantha","Bob","Sue","James","Alvin","Simon","Theodore"], exmployee_names
  end

  def test_list_of_all_ingredients_across_all_restaurants
    #=======================
    ingredients_array = []
    ingredients = stores.each do |restaurant|
      restaurant[1][:dishes].each do |dish|
        ingredients_array << dish[:ingredients]
      end
    end
    ingredients = ingredients_array.flatten
    #=======================
    assert_equal ["Rice",
                  "Cheese",
                  "Butter",
                  "Beef",
                  "Garlic",
                  "Flour",
                  "Eggs",
                  "Milk",
                  "Syrup",
                  "Flour",
                  "Eggs",
                  "Syrup",
                  "Bun",
                  "Hamburger",
                  "Ketchup",
                  "pickles",
                  "Potatoes",
                  "Salt"], ingredients
  end

  def test_full_menu_price_for_olive_garden
    #=======================
    price_counter = 0
    stores[:olive_garden][:dishes].each do |dish|
      price_counter += dish[:price]
    end
    full_menu_price = price_counter
    #=======================
    assert_equal 27, full_menu_price
  end

  def test_all_ingredients_for_Macdonalds
    #=======================
    ingredient_array = []
    stores[:macdonalds][:dishes].each do |dish|
      ingredient_array << dish[:ingredients]
    end
    all_macdonalds_ingredients = ingredient_array.flatten
    #=======================
    assert_equal ["Bun","Hamburger","Ketchup","pickles","Potatoes","Salt"], all_macdonalds_ingredients
  end
end
