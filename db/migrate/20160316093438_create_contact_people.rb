class CreateContactPeople < ActiveRecord::Migration
  def change
    create_table :contact_people do |t|
      t.integer :restaurant_id
      t.integer :company_id
      t.string :name
      t.string :role
      t.string :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
