class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name, :null => false
      t.integer :monitor_id, :null => false
    end
    add_index :hosts, :monitor_id
    add_index :hosts, [:monitor_id, :name], :unique => true
  end
end
