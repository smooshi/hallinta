class CreateSoftwareInAgreements < ActiveRecord::Migration
  def change
    create_table :software_in_agreements do |t|
      t.integer :software_id
      t.integer :agreement_id
      t.integer :monthly_price

      t.timestamps null: false
    end
  end
end
