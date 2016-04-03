class CreateWarehouses < ActiveRecord::Migration
  def up
    create_table :warehouses do |t|
      t.string "name", :limit=>50, :null=>false
      t.string "address", :limit=>100, :null=>false
      t.integer "capacity", :null=>false
      t.timestamps null: false
    end
  end

  def down
    drop_table :warehouses
  end
end
