class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.boolean :addon
      t.integer :BEL_price
      t.integer :price
      t.string :identifier

      t.timestamps null: false
    end
  end
end
