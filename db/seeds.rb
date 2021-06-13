# This file seeds the recipe table for development purposes

# Seed tags first
asian_tag = RecipeTag.create(tag_name: 'Asian')
american_tag = RecipeTag.create(tag_name: 'American')
dessert_tag = RecipeTag.create(tag_name: 'Dessert')
christmas_tag = RecipeTag.create(tag_name: 'Christmas')

# Seed recipes next
# TOMATO AND EGGS
tomato_egg = Recipe.new({recipe_name: 'Tomato and Eggs', creator_name: 'Eric Ying'})
tomato_egg.recipe_tags << [asian_tag]
tomato_egg.update_attribute(:description, "Stir fried scrambled eggs and chopped tomatoes. Classic chinese dish.")

tei1 = RecipeIngredient.create({quantity_and_name: '3 tomatoes', priority: 0})
tei2 = RecipeIngredient.create({quantity_and_name: '2 eggs', priority: 1})
tei3 = RecipeIngredient.create({quantity_and_name: '1 cilantro', priority: 2})
tei4 = RecipeIngredient.create({quantity_and_name: 'salt and pepper', priority: 3})

tomato_egg.recipe_ingredients << [tei1, tei2, tei3, tei4]

tes1 = RecipeInstruction.create({instruction: 'Beat egg, add salt and pepper.', step: 0})
tes2 = RecipeInstruction.create({instruction: 'Pour oil in pan. Pour egg mixture, stir frequently, cook until egg becomes solid.', step: 1})
tes3 = RecipeInstruction.create({instruction: 'Take out eggs. Put in tomatoes and cook for 2 minutes.', step: 2})
tes4 = RecipeInstruction.create({instruction: 'Add eggs back into the pan. Stir for another 3 minutes. Serve with some cilantro.', step: 3})

tomato_egg.recipe_instructions << [tes1, tes2, tes3, tes4]

tomato_egg.save!

# OMELETTE
omelette = Recipe.new({recipe_name: 'Omelette', creator_name: 'Eric Ying'})
omelette.update_attribute(:description, "Classic western egg breakfast dish. Eat with cheese!")
omelette.recipe_tags << [american_tag]

oi1 = RecipeIngredient.create({quantity_and_name: '3 eggs', priority: 0})
os1 = RecipeInstruction.create({instruction: 'Beat eggs and cook.', step: 0})

omelette.recipe_ingredients << [oi1]
omelette.recipe_instructions << [os1]

omelette.save!

# FRIED RICE
fried_rice = Recipe.new({recipe_name: 'Fried Rice', creator_name: 'Eric Ying'})
fried_rice.recipe_tags << [asian_tag]

fri1 = RecipeIngredient.create({quantity_and_name: '10 cilantros', priority: 0})
frs1 = RecipeInstruction.create({instruction: 'Cook cilantros and rice.', step: 0})

fried_rice.recipe_ingredients << [fri1]
fried_rice.recipe_instructions << [frs1]

fried_rice.save!

# GRILLED CHEESE
grilled_cheese = Recipe.new({recipe_name: 'Grilled Cheese Sandwich', creator_name: 'Eric Ying'})
grilled_cheese.recipe_tags << [american_tag]

gci1 = RecipeIngredient.create({quantity_and_name: '1 American cheese', priority: 0})
gcs1 = RecipeInstruction.create({instruction: 'Put butter in pan.', step: 0})

grilled_cheese.recipe_ingredients << [gci1]
grilled_cheese.recipe_instructions << [gcs1]

grilled_cheese.save!

# SORBET
sorbet = Recipe.new({recipe_name: 'Sorbet', creator_name: 'Eric Ying'})
sorbet.recipe_tags << [dessert_tag]

si1 = RecipeIngredient.create({quantity_and_name: '1 milk can', priority: 0})
ss1 = RecipeInstruction.create({instruction: 'Put angel in the can.', step: 0})

sorbet.recipe_ingredients << [si1]
sorbet.recipe_instructions << [ss1]

sorbet.save!

# EGGNOG
eggnog = Recipe.new({recipe_name: 'NoggerLoggerFoggerHoggerSoggerEggNogger', creator_name: 'Eric Ying'})
eggnog.recipe_tags << [dessert_tag, christmas_tag]
eggnog.update_attribute(:description, "A weird complex dish involving many steps and preparations." \
                      " Will cause explosion and such if consumed. Beware!")

eni1 = RecipeIngredient.create({quantity_and_name: '10 eggs', priority: 0})
ens1 = RecipeInstruction.create({instruction: 'Nog the egg!', step: 0})

eggnog.recipe_ingredients << [eni1]
eggnog.recipe_instructions << [ens1]

eggnog.save!

# CHICKEN SOUP
chicken_soup = Recipe.new({recipe_name: 'Chicken Soup', creator_name: 'John Smith'})
chicken_soup.recipe_tags << [american_tag]

csi1 = RecipeIngredient.create({quantity_and_name: '5 whole chickens', priority: 0})
css1 = RecipeInstruction.create({instruction: 'Extract soup out of chicken.', step: 0})

chicken_soup.recipe_ingredients << [csi1]
chicken_soup.recipe_instructions << [css1]

chicken_soup.save!
