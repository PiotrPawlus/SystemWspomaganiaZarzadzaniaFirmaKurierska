class CreateCouriers < ActiveRecord::Migration
  def up
    create_table :couriers do |t|
      t.string "precinct", :limit=>250, :null=>false
      t.timestamps null: false
    end
  end

  def down
    drop_table :couriers
  end
end
