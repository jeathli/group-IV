class Recipe < ApplicationRecord
  validates :name, presence: true,
    uniqueness: true
  validates :description, presence: true

  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  scope :random, -> { order ('RANDOM()') }
end
