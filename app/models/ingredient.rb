class Ingredient < ApplicationRecord
  validates :name, presence: true,
    uniqueness: true,
    format: { with: /\A[a-z][a-z\s]+[a-z]\z/,
    message: "only allows lowercase letters and whitespace" }

  has_many :recipe_and_ingredients
  has_many :recipes, through: :recipe_and_ingredients
end
