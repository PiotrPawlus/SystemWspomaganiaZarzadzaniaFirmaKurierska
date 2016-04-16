class CreateOrders < ActiveRecord::Migration
  def up
    create_table :orders do |t|
      t.string "order_number", :limit=>16, :null=>false
      t.string "status", :limit=>80, :null=>false
      t.timestamps null: false
    end
    add_index("orders", "order_number")
  end

  def down
    drop_table :orders
  end
end
