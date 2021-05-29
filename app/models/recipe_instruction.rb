class RecipeInstruction < ApplicationRecord
    belongs_to :recipe

    validates_length_of :instruction, minimum: 1, maximum: 300, 
        too_long: "Instructions cannot exceed 300 letters", too_short: "Instruction cannot be empty"
end
