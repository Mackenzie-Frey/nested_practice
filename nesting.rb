stores ={
   olive_garden: {
                    employees: ['Jeff', 'Zach', 'Samantha'],
                    dishes: [ {name: 'Risotto',
                              ingredients: ['Rice',
                                            'Cheese',
                                            'Butter'],

                              price: 12},

                              {name: 'Steak',
                              ingredients: ['Beef',
                                            'Garlic'],
                              price: 15}
                              ]

                    },
    dennys: {
              employees: ['Bob', 'Sue', 'James'],
              dishes: [{name: 'Pancakes',
                        ingredients: ['Flour',
                                     'Eggs',
                                     'Syrup'],
                        price: 10},
                        {name: 'Waffles',
                        ingredients: ['Flour',
                                      'Eggs',
                                      'Syrup'],
                        price: 200}
                      ]
            }
}

require 'pry'; binding.pry
class NestedTest < MiniTest::Test
  def test_list_of_restaurants
    
  end

  def test_list_of_dishes
  end

  def test_list_of_employees
  end

  def test_full_menu_price_for_each_restaurant
  end

  def test_all_ingredients_for_restaurant
  end

end
