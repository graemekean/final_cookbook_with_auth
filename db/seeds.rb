# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Recipe.delete_all
Ingredient.delete_all
Foodtype.delete_all

Category.create!(name: "Starters")
Category.create!(name: "Mains")
Category.create!(name: "Deserts")
Category.create!(name: "Snacks")
Category.create!(name: "Sides")
Category.create!(name: "Drinks")
Category.create!(name: "Juices")
Category.create!(name: "Cocktails")
Category.create!(name: "Breakfast")
Category.create!(name: "Soups")

Recipe.create!(name: "Prawn Cocktail", description: "Classic 80s starter", category_id: 1)
Recipe.create!(name: "Burger", description: "BBQ Flame grilled shiznit", category_id: 2)
Recipe.create!(name: "Knickerbocker Glory", description: "Huge yum factor", category_id: 3)
Recipe.create!(name: "Cheese and Chips", description: "Great snack food", category_id: 4)
Recipe.create!(name: "Roasted Vegetables", description: "I nice side order", category_id: 5)
Recipe.create!(name: "Irish Coffee", description: "Coffee with booze", category_id: 6)
Recipe.create!(name: "Fruit Smoothie", description: "Healthy Delicious", category_id: 7)
Recipe.create!(name: "Mojito", description: "Cuban Deliciousness", category_id: 8)
Recipe.create!(name: "Full English", description: "Sleezy hangover food", category_id: 9)
Recipe.create!(name: "Carrot and Coriander Soup", description: "Quick and delicious", category_id: 10)

Foodtype.create!(name: 'Meat')
Foodtype.create!(name: 'Seafood')
Foodtype.create!(name: 'Grains and Pulses')
Foodtype.create!(name: 'Vegetables')
Foodtype.create!(name: 'Dairy')
Foodtype.create!(name: 'Fruit')



Ingredient.create!(name: "Chicken", foodtype_id: 1)
Ingredient.create!(name: "Beef", foodtype_id: 1)
Ingredient.create!(name: "Pork", foodtype_id: 1)
Ingredient.create!(name: "Salmon", foodtype_id: 2)
Ingredient.create!(name: "Trout", foodtype_id: 2)
Ingredient.create!(name: "Black Pudding", foodtype_id: 1)
Ingredient.create!(name: "Haddock", foodtype_id: 2)
Ingredient.create!(name: "Hake", foodtype_id: 2)
Ingredient.create!(name: "Hallibut", foodtype_id: 2)
Ingredient.create!(name: "Cod", foodtype_id: 2)
Ingredient.create!(name: "Tuna", foodtype_id: 2)
Ingredient.create!(name: "Turkey", foodtype_id: 1)
Ingredient.create!(name: "Venison", foodtype_id: 1)
Ingredient.create!(name: "Onions", foodtype_id: 4)
Ingredient.create!(name: "Peppers", foodtype_id: 4)
Ingredient.create!(name: "Eggs", foodtype_id: 1)
Ingredient.create!(name: "Beef", foodtype_id: 1)
Ingredient.create!(name: "Pasta", foodtype_id: 3)
Ingredient.create!(name: "Rice", foodtype_id: 3)
Ingredient.create!(name: "Cauliflower", foodtype_id: 4)
Ingredient.create!(name: "Broccoli", foodtype_id: 4)
Ingredient.create!(name: "Potatoes", foodtype_id: 4)
Ingredient.create!(name: "Celery", foodtype_id: 4)
Ingredient.create!(name: "Sweet potato", foodtype_id: 4)
Ingredient.create!(name: "Butter", foodtype_id: 1)
Ingredient.create!(name: "Bread", foodtype_id: 3)
Ingredient.create!(name: "Ice Cream", foodtype_id: 5)
Ingredient.create!(name: "Milk", foodtype_id: 5)
Ingredient.create!(name: "Sour Cream", foodtype_id: 5)
Ingredient.create!(name: "Cheese", foodtype_id: 5)
Ingredient.create!(name: "Yoghurt", foodtype_id: 5)
Ingredient.create!(name: "Sausages", foodtype_id: 1)
Ingredient.create!(name: "Duck", foodtype_id: 1)
Ingredient.create!(name: "Apple", foodtype_id: 6)
Ingredient.create!(name: "Orange", foodtype_id: 6)
Ingredient.create!(name: "Banana", foodtype_id: 6)
Ingredient.create!(name: "Pear", foodtype_id: 6)
Ingredient.create!(name: "Strawberry", foodtype_id: 6)
Ingredient.create!(name: "Tomato", foodtype_id: 6)
Ingredient.create!(name: "Lemon", foodtype_id: 6)
Ingredient.create!(name: "Lime", foodtype_id: 6)
Ingredient.create!(name: "Blueberry", foodtype_id: 6)



















