class RecipesController < ApplicationController
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
end
