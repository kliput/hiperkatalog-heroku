class CreateMonitors < ActiveRecord::Migration
  def change
    create_table :monitors do |t|
      t.string :name, :null => false
    end
    add_index :monitors, :name, :unique => true
  end
end
