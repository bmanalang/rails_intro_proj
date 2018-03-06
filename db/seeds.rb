

csv_foodfile = Rails.root + 'db/Food.csv'

options = { file_encoding: 'iso-8859-1',
            key_mapping: { fooddescription: :food_name } }

food_names = SmarterCSV.process(csv_foodfile, options)

food_names.each do |f|
  food = Food.create(f)

  ingredients = Faker::Food.ingredient
  ingredient = Ingredient.new
  ingredient.ingredient_name = ingredients
  ingredient.save

  beer = Faker::Beer.style
  brew = Beer.new
  brew.beer_type = beer
  brew.save
end
