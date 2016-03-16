class CreateDeviceInAgreements < ActiveRecord::Migration
  def change
    create_table :device_in_agreements do |t|
      t.integer :agreement_id
      t.integer :device_id
      t.boolean :price_is_leasing
      t.integer :total_price
      t.integer :monthly_price

      t.timestamps null: false
    end
  end
end
