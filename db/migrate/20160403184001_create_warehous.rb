class CreateWarehous < ActiveRecord::Migration
  def change
    create_table :warehous do |t|

      t.timestamps null: false
    end
  end
end
