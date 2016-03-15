class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :company_id
      t.string :street_address
      t.string :city
      t.string :country
      t.string :phone_number
      t.string :email
      t.string :server_ip
      t.integer :restaurant_type_id

      t.timestamps null: false
    end
  end
end
