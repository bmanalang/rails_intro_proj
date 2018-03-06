class Ingredient < ApplicationRecord
  validates :ingredient_name, presence: true

  has_many :food_ingredients
  has_many :foods, through: :food_ingredients
end
