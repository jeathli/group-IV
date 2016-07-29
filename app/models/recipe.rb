class Recipe < ApplicationRecord
  validates :name, presence: true,
    uniqueness: true
  validates :description, presence: true
  validates :img_url, presence: true
  validates :ingredient_details, presence: true

  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  scope :random, -> { order ('RANDOM()') }

  def self.sample_recipe
    random.first
  end
end
