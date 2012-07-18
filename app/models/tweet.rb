class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
	attr_accessible :img_url, :screen_name, :real_name, :status, :tweeted_at, :user_id

	validates :screen_name, presence: true
	validates :status, presence: true
	validates :tweeted_at, presence: true
	validates :user_id, presence: true

	belongs_to :user
	has_and_belongs_to_many :categories
#if had a category called "cat", one could do cat.tweets and get all the tweets assoc'd with the cat category	
	
	def suggested_categories
		
		categories = Category.all.map(&:title).map(&:downcase)		
		words_in_tweet = status.downcase.gsub(/#/, '').split
		includes_business = words_in_tweet.include?("business")
		includes_money = words_in_tweet.include?("money")
		c_cap = categories.map {|t| t.capitalize}
		t_cap = words_in_tweet.map {|t| t.capitalize}
		if includes_business ==true and includes_money ==true
			c_cap & t_cap
			else
				nil
		end	
end

end

#Peter's solution
#
#words.inject([]) do |collector, word|
#  match = categories.detect {|c| c.title_match?(word)}
#  collector << match.title if match
#  collector
#  end.sort.join(', ')
# end
