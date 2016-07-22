class RecipesController < ApplicationController

  def index
    if ingredient_id = params["ingredient"]
      ingredient_id = ingredient_id.to_i
      @recipes = Ingredient.find(ingredient_id).recipes
    else
      @recipes = Recipe.all
   end
 end

  def show
  end
end
