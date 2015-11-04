class CategoriesController < ApplicationController

  def home
    load_categories
  end

  def index
    load_categories

  #@countries.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  #@country = Country.find(params[:id])
end

def show
  load_category
  @recipes = Recipe.all
  @recipe = Recipe.find(params[:id])
end

def new
  @category = Category.new
  load_categories
end

def create
  Category.create(category_params)   #see the team_params from the private method below
  redirect_to(categories_path)
end

def destroy
  load_category  #doesn't need @ since it is not exposed - only being deleted
  @category.destroy
  redirect_to(categories_path)
end

def edit
  load_category

end

def update
  load_category #again - the data does not need to be exposed - no @
  @category.update(category_params) #from the private method below - whitelist check
  redirect_to(categories_path)
end  

private

def load_category
  @category = Category.find(params[:id])
end

def load_categories
  @categories = Category.all
end

def category_params
  # allows these params to be accessed by the methods above
  params.require(:category).permit(:name)
end

end