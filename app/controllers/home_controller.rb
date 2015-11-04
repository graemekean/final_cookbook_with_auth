class HomeController < ApplicationController

  def index
    @categories = Category.all
    @ingredients = Ingredient.all
    @recipes = Recipe.all
   

  end

  def about_us

  end

  def blog

  end

end