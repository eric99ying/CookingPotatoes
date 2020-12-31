class CreateRecipeIngredients < ActiveRecord::Migration[6.1]
    def change
        create_table :recipe_ingredients do |t|
            t.belongs_to :recipe
            t.string :quantity_and_name, null: false, default: ''
            t.integer :priority, null: false, default: 0

            t.timestamps
        end
    end
end
