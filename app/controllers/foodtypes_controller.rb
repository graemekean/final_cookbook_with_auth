class FoodtypesController < ApplicationController

  def home
    @foodtypes = Foodtype.all
  end

def index
    @foodtypes = Foodtype.all
    @ingredients = Ingredient.all
  

  #@countries.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  #@country = Country.find(params[:id])
end

def show
  @foodtype = Foodtype.find(params[:id])
  @ingredients = Ingredient.all
  @ingredient = Ingredient.find(params[:id])
end

def new
  @foodtype = Foodtype.new
  @foodtypes = Foodtype.all
end

def create
  Foodtype.create(foodtype_params)   #see the team_params from the private method below
  redirect_to(foodtypes_path)
end

def destroy
  foodtype = Foodtype.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
  foodtype.destroy
  redirect_to(foodtypes_path)
end

def edit
    @foodtype = Foodtype.find(params[:id])

end

def update
  foodtype = Foodtype.find(params[:id]) #again - the data does not need to be exposed - no @
  foodtype.update(foodtype_params) #from the private method below - whitelist check
  redirect_to(foodtypes_path)
end  

private
def foodtype_params
  # allows these params to be accessed by the methods above
  params.require(:foodtype).permit(:name)
end

end