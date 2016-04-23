class AddCourierReferenceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :courier_id, :integer
  end
end
