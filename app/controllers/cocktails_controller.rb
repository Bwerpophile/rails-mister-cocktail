class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @ingredient = Ingredient.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save # => false
      redirect_to @cocktail
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
