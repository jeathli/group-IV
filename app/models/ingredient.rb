class Ingredient < ApplicationRecord
  validates :name, presence: true,
    uniqueness: true,
    format: { with: /\A[a-z][a-z\s]+[a-z]\z/,
    message: "only allows lowercase letters and whitespace" }

  has_many :ingredients_recipes
  has_many :recipes, through: :ingredients_recipes
end
