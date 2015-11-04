class Ingredient < ActiveRecord::Base
  has_many :recipes, through: :quantities
  belongs_to :foodtype
  has_many :quantities
end
