class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|

			t.string :img_url
			t.string :screen_name, null: false
			t.string :real_name
			t.string :time_ago
			t.string :status, null: false
			t.datetime :tweeted_at, null: false
			t.integer :user_id, null: false

      t.timestamps
    end
			add_index :tweets, :user_id
  end
end
