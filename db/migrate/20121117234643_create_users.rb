class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login, :null => false
      t.string :email, :null => false
      t.string :name
      t.string :surname
      t.string :key
    end
    add_index :users, :email, :unique => true
  end
end
