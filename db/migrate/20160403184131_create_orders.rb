class CreateOrders < ActiveRecord::Migration
  def up
    create_table :orders do |t|
      t.integer "order_number", :null=>false
      t.string "status", :limit=>80, :null=>false
      t.timestamps null: false
    end
    add_index("orders", "order_number")
  end

  def down
    drop_table :orders
  end
end
