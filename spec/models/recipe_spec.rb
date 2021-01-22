require 'rails_helper'

# Unit test for the Recipe model
RSpec.describe Recipe, type: :model do

    # Background setup
    before(:each) do
        @tag1 = RecipeTag.create({name: 'American'})
        @recipe = Recipe.create({name: 'And', creator_name: 'Bob'})
        @recipe.recipe_tags << [@tag1]
        @ing2 = RecipeIngredient.create({quantity_and_name: '1 onion', priority: 2})
        @ing1 = RecipeIngredient.create({quantity_and_name: '3 muttons', priority: 1})
        @recipe.recipe_ingredients << [@ing1, @ing2]
        @ins1 = RecipeInstruction.create({instruction: 'Chop up onions', step: 1})
        @ins3 = RecipeInstruction.create({instruction: 'Serve', step: 3})
        @ins2 = RecipeInstruction.create({instruction: 'Cook mutton to perfection!', step: 2})
        @recipe.recipe_instructions << [@ins1, @ins3, @ins2]
    end

    # Test sorting
    describe "Sorting recipe instructions and ingredients" do
        it "sorts ingredients correctly" do
            expect(@recipe.get_ingredients.map{|ri| ri.quantity_and_name}).to eq(['3 muttons', '1 onion'])
        end

        it "sorts instructions correctly" do
            expect(@recipe.get_instructions.map{|ri| ri.instruction}).to eq(['Chop up onions',
                'Cook mutton to perfection!',
                'Serve'])
        end
    end
end