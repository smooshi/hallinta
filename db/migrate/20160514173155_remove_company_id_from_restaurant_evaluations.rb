class RemoveCompanyIdFromRestaurantEvaluations < ActiveRecord::Migration
  def change
    remove_column :restaurant_evaluations, :company_id, :integer
  end
end
