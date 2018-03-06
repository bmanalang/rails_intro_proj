class Beer < ApplicationRecord
  validates :beer_type, presence: true

  has_many :foods
end
