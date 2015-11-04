class IngredientsController < ApplicationController

def index
  @ingredients = Ingredient.all
  #@countries.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  #@country = Country.find(params[:id])
end

def show
  @ingredient = Ingredient.find(params[:id])
end

def new
  @ingredient = Ingredient.new
end

def create
  Ingredient.create(ingredient_params)   #see the team_params from the private method below
  redirect_to(ingredients_path)
end

def destroy
  ingredient = Ingredient.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
  ingredient.destroy
  redirect_to(ingredients_path)
end

def edit
    @ingredient = Ingredient.find(params[:id])

end

def update
  ingredient = Ingredient.find(params[:id]) #again - the data does not need to be exposed - no @
  ingredient.update(ingredient_params) #from the private method below - whitelist check
  redirect_to(ingredients_path)
end  

private
def ingredient_params
  # allows these params to be accessed by the methods above
  params.require(:ingredient).permit(:name, :foodtype_id)
end

end