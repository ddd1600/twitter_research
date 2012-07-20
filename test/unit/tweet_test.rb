require 'test_helper'

class TweetTest < ActiveSupport::TestCase

	setup do
		#setup runs every time a test runs
		#%w means 'take a string, sep with whitespace, and turn it into an array'
		%w(Business Personal Money Entertainment).each do |title|
			Category.create!(title: title)
		end
	end
	
	test("suggested categories works correctly") do
		tweet = Tweet.new do |t|
			t.status = "Business, #money, #pleasure"
		end
		assert_equal("Business, Money", tweet.suggested_categories)
	end

def test_setting_categories_from_a_string

	tweet = Tweet.new
	cat = Category.where(title: "Food").first
	assert(cat)

	tweet.categories << cat
	assert_equal(1, tweet.categories.size)

	tweet.categories_as_string = "Food, Friends"
	assert_equal(2, tweet.categories.size)
	assert_equal(%(Food Friends), tweet.categories.map(&:title).sort)

end

end
