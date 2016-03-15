class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :company_type_id
      t.string :street_address
      t.string :city
      t.string :country
      t.string :phone_number
      t.string :email
      t.integer :added_by_user
      t.integer :edited_by_user
      t.timestamp :added_time
      t.timestamp :edit_time

      t.timestamps null: false
    end
  end
end
