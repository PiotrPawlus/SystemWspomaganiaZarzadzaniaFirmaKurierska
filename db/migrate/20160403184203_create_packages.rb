class CreatePackages < ActiveRecord::Migration
  def up
    create_table :packages do |t|
      t.float "weight", :null=>false
      t.float "size_X", :null=>false
      t.float "size_Y", :null=>false
      t.float "size_Z", :null=>false
      t.string "delivery_address", :limit=>150, :null=>false
      t.string "sender_address", :limit=>150, :null=>false
      t.string "actual_place", :limit=>100, :null=>false
      t.string "phone", :limit=>15, :null=>false
      t.float "cost", :null=>false
      t.timestamps null: false
    end
  end

  def down
    drop_table :packages
  end
end
