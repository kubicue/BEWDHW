class IngredientsController < ApplicationController
  def home
  end

  def ingredients
    @ingredients = Ingredient.all
  end
end
