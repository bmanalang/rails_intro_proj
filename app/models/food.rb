class Food < ApplicationRecord
  validates :food_name, presence: true
end
