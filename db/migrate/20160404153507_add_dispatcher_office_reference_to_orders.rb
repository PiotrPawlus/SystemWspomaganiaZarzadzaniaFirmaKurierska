class AddDispatcherOfficeReferenceToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :dispatcher_office_id, :integer
  end
end
