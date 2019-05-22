class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @doses = Dose.all
    @ingredients = Ingredient.all
  end

  def show
    @cocktail = Cocktail.find_by_id(params[:id])
  end
  def new
  end
  def update
  end
end
