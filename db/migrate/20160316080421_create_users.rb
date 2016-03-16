class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :role_id
      t.boolean :currently_employed, default=true
      t.boolean :admin, default=false
      t.string :encrypted_password

      t.timestamps null: false
    end
  end
end
