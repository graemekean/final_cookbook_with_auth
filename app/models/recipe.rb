class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :ingredients, through: :quantities
  has_many :quantities




 


 



  
end
