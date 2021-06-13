class CreateRecipeTags < ActiveRecord::Migration[6.1]
    def change
        create_table :recipe_tags do |t|
            t.string :tag_name, null: false, default: ''

            t.timestamps
        end
    end
end
