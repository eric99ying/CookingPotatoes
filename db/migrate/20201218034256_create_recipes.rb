class CreateRecipes < ActiveRecord::Migration[6.1]
    def change
        create_table :recipes do |t|
            t.string :recipe_name, null: false, default: ''
            t.string :creator_name, null: false, default: ''
            t.string :creator_email, null: false, default: ''
            t.string :description, null: false, default: ''
            t.string :photo_url, null: false, default: ''

            t.timestamps
        end
        
    end
end
