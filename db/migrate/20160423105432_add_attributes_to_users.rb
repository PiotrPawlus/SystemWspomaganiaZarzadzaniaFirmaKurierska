class AddAttributesToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string "name", :limit=>50, :null=>false
      t.string "surname", :limit=>50, :null=>false
      t.date "birth_date", :null=>false
      t.string "position", :limit=>100, :null=>false
      t.boolean "is_admin", :default=>false, :null=>false
      t.boolean "is_dispather"
      t.boolean "is_courier"
      t.boolean "is_warehouse"
    end
  end
end
