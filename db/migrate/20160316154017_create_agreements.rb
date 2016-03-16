class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :agreement_length
      t.integer :term_of_notice_in_months
      t.integer :responsible_user_id
      t.integer :invoicing_period_length
      t.integer :invoicing_payment_time
      t.integer :invoicing_date
      t.boolean :signed_by_customer

      t.timestamps null: false
    end
  end
end
