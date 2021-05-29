class Recipe < ApplicationRecord
    # One recipe consists of many instructions and ingredients, ordered as well
    has_many :recipe_instructions
    has_many :recipe_ingredients

    # One recipe may have several tags
    has_and_belongs_to_many :recipe_tags

    # Ensure name of recipe is appropriate
    validates_length_of :name, minimum: 1, maximum: 40, 
        too_long: "Name must be below 40 characters", too_short: "Name cannot be blank"
    validates_length_of :recipe_instructions, minimum: 1, maximum: 20,
        too_long: "Number of steps cannot exceed 20", too_short: "Must have at least one step"
    validates_length_of :recipe_ingredients, minimum: 1, maximum: 30,
        too_long: "Number of ingredients cannot exceed 30", too_short: "Must have at least one ingredient"

    # Ensure instructions and ingredients can be passed as arrays
    accepts_nested_attributes_for :recipe_instructions
    accepts_nested_attributes_for :recipe_ingredients

    # Class method to get all recipes in database
    def self.all_recipes
        return Recipe.all
    end

    # Class method to get all ingredients and instructions in an array sorted properly
    def get_ingredients
        return self.recipe_ingredients.sort_by { |ri| ri.priority }
    end
    def get_instructions
        return self.recipe_instructions.sort_by { |ri| ri.step }
    end

end
