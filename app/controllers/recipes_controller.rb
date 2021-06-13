require 'pp'

class RecipesController < ApplicationController

    # Require user to be signed in for some actions
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @recipes = Recipe.all_recipes

        p 'Listing all recipes'
        p @recipes
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
        @recipe.recipe_ingredients.build
    end

    def create
        # Whitelist acceptable params attributes
        ActionController::Parameters.permit_all_parameters = true

        p 'Printing out contents of params'
        pp params # print params

        @recipe = Recipe.new
        
        # Create recipe object
        @recipe.recipe_name = params[:recipe][:recipe_name]
        @recipe.description = params[:recipe][:description]
        @recipe.recipe_ingredients = params[:recipe][:recipe_ingredients_attributes].to_h.map do |k, v|
            RecipeIngredient.create({:priority => k, :quantity_and_name => v['quantity_and_name']}) 
        end
        @recipe.recipe_instructions = params[:recipe][:recipe_instructions_attributes].to_h.map do |k, v|
            RecipeInstruction.create({:step => k, :instruction => v['instruction']}) 
        end
        @recipe.recipe_tags = params[:recipe][:recipe_tag_ids][1..-1].map do |v|
            RecipeTag.find_by_id(v)
        end
        @recipe.creator_name = current_user.name

        # If recipe is valid, go to the show page for the recipe. Otherwise, go back to the new page. 
        if @recipe.valid?
            @recipe.save
            flash[:creation_notice] = 'Recipe successfully created'
            redirect_to action: "show", id: @recipe
        else 
            flash[:creation_notice] = @recipe.errors.full_messages[0]
            redirect_to action: "new"
        end

    end
end
