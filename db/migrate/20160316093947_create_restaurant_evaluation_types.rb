class CreateRestaurantEvaluationTypes < ActiveRecord::Migration
  def change
    create_table :restaurant_evaluation_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
