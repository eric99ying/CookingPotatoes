class Recipe < ApplicationRecord
    # One recipe consists of many instructions and ingredients, ordered as well
    has_many :recipe_instructions
    has_many :recipe_ingredients

    # One recipe may have several tags
    has_and_belongs_to_many :recipe_tags

    # Ensure name of recipe is appropriate
    validates_length_of :name, minimum: 1, maximum: 40, 
        too_long: "Name must be below 40 characters", too_short: "Name cannot be blank"

    # Class method to get all recipes in database
    def self.all_recipes
        return Recipe.all
    end

end
