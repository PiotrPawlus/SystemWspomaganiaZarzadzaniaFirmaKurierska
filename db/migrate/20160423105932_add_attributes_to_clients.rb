class AddAttributesToClients < ActiveRecord::Migration
  def self.up
    change_table(:clients) do |t|
      t.string "name", :limit=>80, :null=>false
      t.string "surname", :limit=>100, :null=>false
      t.string "phone", :limit=>15, :null=>false
    end
  end
end
