class CreateDispatcherOffices < ActiveRecord::Migration
  def up
    create_table :dispatcher_offices do |t|
      t.string "name", :limit=>100, :null=>false
      t.string "address", :limit=>150, :null=>false
      t.integer "capacity", :null=>false
      t.timestamps null: false
    end
  end

  def down
    drop_table :dispatcher_offices
  end
end
