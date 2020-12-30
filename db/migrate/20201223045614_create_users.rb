class CreateUsers < ActiveRecord::Migration[6.1]
    def change
        create_table :users do |t|
            t.column :provider, :string, null: false, default: ''
            t.column :uid, :string, null: false, default: ''
            t.column :name, :string,  null: false,  default: ''

            # Trackable columns
            t.integer  :sign_in_count, :default => 0
            t.datetime :current_sign_in_at
            t.datetime :last_sign_in_at
            t.string   :current_sign_in_ip
            t.string   :last_sign_in_ip

            t.timestamps
        end
    end
end
