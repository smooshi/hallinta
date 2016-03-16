class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :restaurant_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
