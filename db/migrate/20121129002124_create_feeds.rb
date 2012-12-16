class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name, :null => false
      t.integer :host_id
      t.integer :monitor_id, :null => false
      t.string :uri, :null => false
    end
    add_index :feeds, :name
    add_index :feeds, [:monitor_id, :name], :unique => true

    create_table :users_feeds do |t|
      t.integer :user_id, :null => false
      t.integer :feed_id, :null => false
    end
    add_index :users_feeds, [:user_id, :feed_id], :unique => true
  end
end
