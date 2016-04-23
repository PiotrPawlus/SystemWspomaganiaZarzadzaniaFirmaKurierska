class AddDispatcherOfficeReferenceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dispatcher_office_id, :integer
  end
end
