class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    @categories = Category.all

  #@countries.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  #@country = Country.find(params[:id])
end

def show
  @recipe = Recipe.find(params[:id])
  @recipes = Recipe.all
  @categories = Category.all
end

def new
  @recipe = Recipe.new
  @recipes = Recipe.all
  @ingredients = Ingredient.all

  # if !request.post?
  #   @ingredients = Ingredient.all
    
  # else
  #  @ingredients = params[:ingredient_ids].collect{|id| id.to_i} 
  # end
end

def create

  # if request.post?
  #   @recipe = Recipe.new(params[:recipe])
  #   @recipe.save
  # else
  #   Recipe.create(recipe_params)   #see the team_params from the private method below
  #   redirect_to(recipes_path)
  # end
  Recipe.create(recipe_params)   #see the team_params from the private method below
  redirect_to(recipes_path)

end


def destroy
  recipe = Recipe.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
  recipe.destroy
  redirect_to(recipes_path)
end

def edit
  @recipe = Recipe.find(params[:id])
  @categories = Category.all
  @ingredients = Ingredient.all
  # if @recipe
  #   if request.post?
  #     raise
  #     if @recipe.update_attributes(recipe)
  #       flash.now[:message]="Update successful"
  #     end
  #   end
  # else
  #   flash[:message]="page cannot be shown"
  # end
end



def update
  # params[:recipe][:ingredient_ids] ||= []
  # @recipe = Recipe.new(params[:recipe])
  # @ingredients = @recipe.ingredients.all
  # @ingredient_ids = []





  recipe = Recipe.find(params[:id]) #again - the data does not need to be exposed - no @
  recipe.update(recipe_params) #from the private method below - whitelist check
  # redirect_to(recipes_path)
  redirect_to(recipes_path)




end  

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

private
def recipe_params
  # allows these params to be accessed by the methods above
  params.require(:recipe).permit(:name, :description, :category_id, ingredient_ids:[])
end

end