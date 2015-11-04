class QuantitiesController < ApplicationController

  def home
    @quantities = Quantity.all
  end

def index
    @quantities = Quantity.all
  # @recipe = Recipe.find(params[:id])


  #@countries.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  #@country = Country.find(params[:id])
end

def show
  @quantity = Quantity.find(params[:id])
  @recipes = Recipe.all
  @recipe = Recipe.find(params[:id])
end

def new
  @quantity = Quantity.new
  @quantities = Quantity.all
end

def create
  Quantity.create(quantity_params)   #see the team_params from the private method below
  redirect_to(quantities_path)
end

def destroy
  quantity = Quantity.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
  quantity.destroy
  redirect_to(quantities_path)
end

def edit
  # @quantities = Quantity.all

    @quantity = Quantity.find(params[:id])
    # @recipe = Recipe.find(params[:id])

end

def update
  @recipe = Recipe.find(params[:id])

  quantity = Quantity.find(params[:id]) #again - the data does not need to be exposed - no @
  quantity.update(quantity_params) #from the private method below - whitelist check
  redirect_to(recipe_path)
end  

private
def quantity_params
  # allows these params to be accessed by the methods above
  params.require(:quantity).permit(:amount, :recipe_id, :ingredient_id)
end

end