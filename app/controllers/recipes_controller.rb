class RecipesController < ApplicationController

  def index
    if ingredient_id = params["ingredient"]
      ingredient_id = ingredient_id.to_i
      @recipes = Ingredient.find(ingredient_id).recipes

      @sample_recipe = Recipe.sample_recipe unless @recipes.present?
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def random
    @recipe = Recipe.random.first
    render 'show'
  end
end
