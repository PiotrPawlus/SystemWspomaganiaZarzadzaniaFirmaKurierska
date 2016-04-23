class AddWarehouseReferenceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :warehouse_id, :integer
  end
end
