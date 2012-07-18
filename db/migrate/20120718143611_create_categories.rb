class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
			t.string :title, null: false

      t.timestamps
    end
	#create join table
	#following rails naming convention for naming the join table
		# add the two table names (plural), ordered alphabetically (and lexically) --- see help for 'has_and_belongs_to_many' for the lexical rules which are need only rarely
		# join tables don't need a primary key, they are made up of foreign keys only, hence id: false
	create_table :categories_tweets, id: false do |t|
		t.integer :category_id, null:false
		t.integer :tweet_id, null: false  
	end

add_index :categories_tweets, :category_id
add_index :categories_tweets, :tweet_id

end
end
