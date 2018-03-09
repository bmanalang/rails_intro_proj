Food.delete_all
csv_foodfile = Rails.root + 'db/Food.csv'

options = { file_encoding: 'iso-8859-1',
            key_mapping: { fooddescription: :food_name } }

food_names = SmarterCSV.process(csv_foodfile, options)

food_names.each do |f|
  food = Food.create(f)

  ingredients = [Faker::Food.ingredient,Faker::Food.ingredient]
  ingredients.each do |i|
    ing = Ingredient.create(ingredient_name: i)
    FoodIngredient.create(food: food, ingredient: ing)
  end

end
