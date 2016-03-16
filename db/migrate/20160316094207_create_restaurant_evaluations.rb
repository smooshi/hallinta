class CreateRestaurantEvaluations < ActiveRecord::Migration
  def change
    create_table :restaurant_evaluations do |t|
      t.integer :restaurant_id
      t.integer :company_id
      t.integer :restaurant_evaluation_type_id
      t.integer :value
      t.integer :evaluation_by_user
      t.timestamp :evaluation_time
      t.text :evaluation_comment

      t.timestamps null: false
    end
  end
end
