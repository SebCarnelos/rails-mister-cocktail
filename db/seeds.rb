# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


alcohols = %w(rhum gin vodka tequila bourbon)
softs = %w(limonade coca orange_juice tonic perrier)
toppings = %w(menthe lemon cacao sugar tabasco)

cocktails = %w(white_russian rumncola mint_julep john_collins margarita)

def create_instance(array, instance)
  array.each do |param|
  instance.create(name: param)
  end
end

create_instance(alcohols, Ingredient)
create_instance(softs, Ingredient)
create_instance(toppings, Ingredient)

create_instance(cocktails, Cocktail)

def create_dose_instance(recipe, cocktail)
  doses = %w(1 2 5 10 15 20)
  Dose.create(description: doses.sample.first, cocktail: cocktail, ingredient: Ingredient.where(name: recipe.sample).first)
end

Cocktail.all.each do |cocktail|
  create_dose_instance(alcohols, cocktail)
  create_dose_instance(softs, cocktail)
  create_dose_instance(toppings, cocktail)
end
