class RenameEvaluationByUserToUserId < ActiveRecord::Migration
  def change
    rename_column :restaurant_evaluations, :evaluation_by_user, :user_id
  end
end
