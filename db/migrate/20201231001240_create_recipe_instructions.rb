class CreateRecipeInstructions < ActiveRecord::Migration[6.1]
    def change
        create_table :recipe_instructions do |t|
            t.belongs_to :recipe
            t.string :instruction, null: false, default: ''
            t.integer :step, null: false, default: 0

            t.timestamps
        end
    end
end
