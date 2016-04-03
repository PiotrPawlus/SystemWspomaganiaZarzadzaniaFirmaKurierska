class CreateDispatcherOffices < ActiveRecord::Migration
  def change
    create_table :dispatcher_offices do |t|

      t.timestamps null: false
    end
  end
end
