# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed tags first
asian_tag = RecipeTag.create(name: 'Asian')
american_tag = RecipeTag.create(name: 'American')
dessert_tag = RecipeTag.create(name: 'Dessert')

# Seed recipes next
tomato_egg = Recipe.create({name: 'Tomato and Eggs', creator_name: 'Eric Ying', recipe_tag: asian_tag})
omelette = Recipe.create({name: 'Omelette', creator_name: 'Eric Ying', recipe_tag: american_tag})
fried_rice = Recipe.create({name: 'Fried Rice', creator_name: 'Eric Ying', recipe_tag: asian_tag})
grilled_cheese = Recipe.create({name: 'Grilled Cheese Sandwich', creator_name: 'Eric Ying', recipe_tag: american_tag})
sorbet = Recipe.create({name: 'Sorbet', creator_name: 'Eric Ying', recipe_tag: dessert_tag})
sorbet = Recipe.create({name: 'Cheese Cake', creator_name: 'Eric Ying', recipe_tag: dessert_tag})
