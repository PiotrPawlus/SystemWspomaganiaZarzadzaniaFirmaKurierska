class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "email", :limit=>60, :null=>false
      t.string "password_digest"
      t.string "email"
      t.string "name", :limit=>50, :null=>false
      t.string "surname", :limit=>50, :null=>false
      t.date "birth_date", :null=>false
      t.string "position", :limit=>100, :null=>false
      t.boolean "is_admin", :default=>false, :null=>false
      t.boolean "is_dispather"
      t.boolean "is_courier"
      t.boolean "is_warehouse"
      t.timestamps null: false
    end
    add_index("users","email")
  end

  def down
    drop_table :users
  end
end
