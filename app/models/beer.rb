class Beer < ApplicationRecord
  validates :beer_type, presence: true
end
