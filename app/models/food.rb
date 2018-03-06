class Food < ApplicationRecord
  validates :food_name, presence: true

  has_many :food_ingredients
  has_many :ingredients, through: :food_ingredients
  has_one :beer
end
