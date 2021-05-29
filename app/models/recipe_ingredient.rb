class RecipeIngredient < ApplicationRecord
    belongs_to :recipe

    validates_length_of :quanitity_and_name, minimum: 1, maximum: 100, 
        too_long: "Ingredient cannot exceed 100 letters", too_short: "Ingredient cannot be blank"
end
