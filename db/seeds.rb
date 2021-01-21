# This file seeds the recipe table for development purposes

# Seed tags first
asian_tag = RecipeTag.create(name: 'Asian')
american_tag = RecipeTag.create(name: 'American')
dessert_tag = RecipeTag.create(name: 'Dessert')
christmas_tag = RecipeTag.create(name: 'Christmas')

# Seed recipes next
# TOMATO AND EGGS
tomato_egg = Recipe.create({name: 'Tomato and Eggs', creator_name: 'Eric Ying'})
tomato_egg.recipe_tags << [asian_tag]
tomato_egg.update_attribute(:description, "Stir fried scrambled eggs and chopped tomatoes. Classic chinese dish.")

tei1 = RecipeIngredient.create({quantity_and_name: '3 tomatoes', priority: 1})
tei2 = RecipeIngredient.create({quantity_and_name: '2 eggs', priority: 2})
tei3 = RecipeIngredient.create({quantity_and_name: '1 cilantro', priority: 3})
tei4 = RecipeIngredient.create({quantity_and_name: 'salt and pepper', priority: 4})

tomato_egg.recipe_ingredients << [tei1, tei2, tei3, tei4]

tes1 = RecipeInstruction.create({instruction: 'Beat egg, add salt and pepper.', step: 1})
tes2 = RecipeInstruction.create({instruction: 'Pour oil in pan. Pour egg mixture, stir frequently, cook until egg becomes solid.', step: 2})
tes3 = RecipeInstruction.create({instruction: 'Take out eggs. Put in tomatoes and cook for 2 minutes.', step: 3})
tes4 = RecipeInstruction.create({instruction: 'Add eggs back into the pan. Stir for another 3 minutes. Serve with some cilantro.', step: 4})

tomato_egg.recipe_instructions << [tes1, tes2, tes3, tes4]

# OMELETTE
omelette = Recipe.create({name: 'Omelette', creator_name: 'Eric Ying'})
omelette.recipe_tags << [american_tag]

# FRIED RICE
fried_rice = Recipe.create({name: 'Fried Rice', creator_name: 'Eric Ying'})
fried_rice.recipe_tags << [asian_tag]

# GRILLED CHEESE
grilled_cheese = Recipe.create({name: 'Grilled Cheese Sandwich', creator_name: 'Eric Ying'})
grilled_cheese.recipe_tags << [american_tag]

# SORBET
sorbet = Recipe.create({name: 'Sorbet', creator_name: 'Eric Ying'})
sorbet.recipe_tags << [dessert_tag]

# EGGNOG
eggnog = Recipe.create({name: 'NoggerLoggerFoggerHoggerSoggerEggNogger', creator_name: 'Eric Ying'})
eggnog.recipe_tags << [dessert_tag, christmas_tag]
eggnog.update_attribute(:description, "A weird complex dish involving many steps and preparations." \
                      " Will cause explosion and such if consumed. Beware!")

# CHICKEN SOUP
chicken_soup = Recipe.create({name: 'Chicken Soup', creator_name: 'John Smith'})
chicken_soup.recipe_tags << [american_tag]
