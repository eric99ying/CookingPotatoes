class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all_recipes
    end
end
