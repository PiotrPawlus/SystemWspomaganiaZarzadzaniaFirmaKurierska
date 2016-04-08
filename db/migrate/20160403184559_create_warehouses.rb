class CreateWarehouses < ActiveRecord::Migration
  def up
    create_table :warehouses do |t|
      t.string "name", :limit=>50, :null=>false
      t.string "city", :limit=>50, :null=>false
      t.string "street", :limit=>50, :null=>false
      t.string "house_number", :limit=>10, :null=>false
      t.string "local_number", :limit=>10
      t.string "postcode", :limit=>10, :null=>false
      t.integer "capacity", :null=>false
      t.timestamps null: false
    end
  end

  def down
    drop_table :warehouses
  end
end
