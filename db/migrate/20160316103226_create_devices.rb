class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :device_type_id
      t.datetime :purchase_day
      t.boolean :is_leased
      t.integer :full_price
      t.integer :leasing_price
      t.integer :leasing_length
      t.string :identifier
      t.boolean :rental_device

      t.timestamps null: false
    end
  end
end
