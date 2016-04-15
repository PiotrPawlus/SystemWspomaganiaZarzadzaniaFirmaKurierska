class CreatePackages < ActiveRecord::Migration
  def up
    create_table :packages do |t|
      t.float "weight", :null=>false
      t.float "size_X", :null=>false
      t.float "size_Y", :null=>false
      t.float "size_Z", :null=>false
      t.string "city_delivery", :limit=>50, :null=>false
      t.string "street_delivery", :limit=>50, :null=>false
      t.string "house_number_delivery", :limit=>10, :null=>false
      t.string "local_number_delivery", :limit=>10
      t.string "postcode_delivery", :limit=>10, :null=>false
      t.string "city_sender", :limit=>50, :null=>false
      t.string "street_sender", :limit=>50, :null=>false
      t.string "house_number_sender", :limit=>10, :null=>false
      t.string "local_number_sender", :limit=>10
      t.string "postcode_sender", :limit=>10, :null=>false
      t.string "actual_place", :limit=>100, :null=>false
      t.string "phone_delivery", :limit=>15, :null=>false
      t.string "phone_sender", :limit=>15, :null=>false
      t.float "cost", :null=>false
      t.boolean "paid", :null=>false
      t.timestamps null: false
    end
  end

  def down
    drop_table :packages
  end
end
