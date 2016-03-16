class CreateDeviceTypes < ActiveRecord::Migration
  def change
    create_table :device_types do |t|
      t.string :name
      t.integer :warranty_length
      t.integer :total_price
      t.integer :leasing_price_per_month

      t.timestamps null: false
    end
  end
end
