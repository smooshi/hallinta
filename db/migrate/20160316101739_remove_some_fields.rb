class RemoveSomeFields < ActiveRecord::Migration
  def change
    remove_column :companies, :added_time
    remove_column :companies, :edit_time
    remove_column :restaurant_evaluations, :evaluation_time
  end
end
