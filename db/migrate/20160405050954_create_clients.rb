class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string "email", :limit=>70, :null=>false
      t.string "password_digest"
      t.string "name", :limit=>80, :null=>false
      t.string "surname", :limit=>100, :null=>false
      t.string "phone", :limit=>15, :null=>false
      t.timestamps null: false
    end
  end
end
