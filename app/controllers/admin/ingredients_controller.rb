class Admin::IngredientsController < ApplicationController
  http_basic_authenticate_with name: ENV.fetch('ADMIN_USER_NAME', 'admin'), password: ENV.fetch('ADMIN_PASSWORD', '1234')
  #before_filter :admin_required

  def index
    @ingredients = Ingredient.all.order(:name)
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to admin_ingredients_path, notice: "Ingredient saved"
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(ingredient_params)
      redirect_to admin_ingredients_path, notice: "Ingredient uppdated"
    else
      render 'edit'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy
    redirect_to admin_ingredients_path, notice: "Ingredient deleted"
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
