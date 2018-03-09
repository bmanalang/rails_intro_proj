Food.delete_all

csv_foodfile = Rails.root + 'db/Food.csv'

options = { file_encoding: 'iso-8859-1',
            key_mapping: { fooddescription: :food_name } }

food_names = SmarterCSV.process(csv_foodfile, options)

food_names.each do |f|
  food = Food.create(f)

  ingredients = Faker::Food.ingredient
  ingredients.each do |i|
    ing = Ingredient.find_or_create_by(ingredient_name: i)
    FoodIngredient.create(food_name: food, ingredient: ing)
  end

  beer = Faker::Beer.style
  beer.each do |b|
    Beer.create(b)
  end
end
