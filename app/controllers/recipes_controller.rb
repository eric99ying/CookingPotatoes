class RecipesController < ApplicationController

    # Require user to be signed in for some actions
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @recipes = Recipe.all_recipes
    end

    def show
        if Recipe.exists?(:id => params[:id])
            @recipe = Recipe.find(params[:id])
        else 
            # If recipe does not exist, redirect to 404 not found page
            @recipe = nil
            raise ActionController::RoutingError.new('Not Found')
        end
    end

    def new
        @recipe = Recipe.new
        @recipe.recipe_instructions.build
    end

    def create

    end
end
