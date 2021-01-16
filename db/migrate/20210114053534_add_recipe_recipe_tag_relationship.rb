class AddRecipeRecipeTagRelationship < ActiveRecord::Migration[6.1]
    def change
        create_table "recipe_tags_recipes", id: false do |t|
            t.belongs_to :recipe
            t.belongs_to :recipe_tag
        end
    end
end
