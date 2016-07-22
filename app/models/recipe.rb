class Recipe < ApplicationRecord
  validates :name, presence: true,
    uniqueness: true
  validates :description, presence: true

  has_many :recipe_and_ingredients
  has_many :ingredients, through: :recipe_and_ingredients
end
