class CreateOtherBillingInAgreements < ActiveRecord::Migration
  def change
    create_table :other_billing_in_agreements do |t|
      t.integer :agreement_id
      t.text :description
      t.integer :total_price
      t.integer :monthly_price

      t.timestamps null: false
    end
  end
end
