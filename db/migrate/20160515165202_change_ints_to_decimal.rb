class ChangeIntsToDecimal < ActiveRecord::Migration
  def change
    change_column :device_types, :total_price, :decimal, precision: 15, scale:3
    change_column :device_types, :leasing_price_per_month, :decimal, precision: 15, scale:3
    change_column :devices, :full_price, :decimal, precision: 15, scale:3
    change_column :devices, :leasing_price, :decimal, precision: 15, scale:3
    change_column :softwares, :BEL_price, :decimal, precision: 15, scale:3
    change_column :softwares, :price, :decimal, precision: 15, scale:3
    change_column :device_in_agreements, :total_price, :decimal, precision: 15, scale:3
    change_column :device_in_agreements, :monthly_price, :decimal, precision: 15, scale: 3
    change_column :software_in_agreements, :monthly_price, :decimal, precision: 15, scale: 3
    change_column :other_billing_in_agreements, :monthly_price, :decimal, precision: 15, scale: 3
    change_column :other_billing_in_agreements, :total_price, :decimal, precision: 15, scale: 3
  end
end
