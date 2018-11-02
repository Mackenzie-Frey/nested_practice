require './nesting'
require 'minitest/autorun'
require 'minitest/pride'

class NestedTest < MiniTest::Test

  def test_list_of_olive_garden_employess
    skip
    #^^^ Un-Skip each test
    #=======================
    # EXAMPLE
    employees = stores[:olive_garden][:employees]
    #=======================
    assert_equal ["Jeff", "Zach", "Samantha"], employees
  end

  def test_pancake_ingrediants
    skip
    #=======================
    # pancake_ingredients = <your code here>
    #=======================
    assert_equal ["Flour", "Eggs", "Milk", "Syrup"], pancake_ingredients
  end

  def test_rissotto_price
    skip
    #=======================
    # risotto_price = <your code here>
    #=======================
    assert_equal 12, risotto_price
  end

  def test_big_mac_ingrediants
    skip
    #=======================
    # big_mac_ingredients = <your code here>
    #=======================
    assert_equal ['Bun','Hamburger','Ketchup','pickles'], big_mac_ingredients
  end
  
  def test_list_of_restaurants
    skip
    #=======================
    # store_names = <your code here>
    #=======================
    assert_equal [:Olive_Garden, :Dennys, :Macdonalds], store_names
  end

  def test_list_of_dishes_names_for_olive_garden
    skip
    #=======================
    # dishes_names = <your code here>
    #=======================
    assert_equal ['Risotto', 'Steak'], dishes_names
  end

  def test_list_of_employees_accross_all_restaurants
    skip
    #=======================
    # exmployee_names = <your code here>
    #=======================
    assert_equal ["Jeff","Zach","Samantha","Bob","Sue","James","Alvin","Simon","Theodore"], exmployee_names
  end

  def test_list_of_all_ingredients_across_all_restaurants
    skip
    #=======================
    # ingredients = <your code here>
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
    skip
    #=======================
    # full_menu_price = <your code here>
    #=======================
    assert_equal 27, full_menu_price
  end

  def test_all_ingredients_for_Macdonalds
    skip
    #=======================
    # all_macdonalds_ingredients = <your code here>
    #=======================
    assert_equal ["Bun","Hamburger","Ketchup","pickles","Potatoes","Salt"], all_macdonalds_ingredients
  end
end


