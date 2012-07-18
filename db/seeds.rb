# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! do |user|
	user.full_name = "Dan Dellow"
	user.email = "dan@dellow.com"
	user.password = "foobar"
	user.password_confirmation = "foobar"
end

Category.create!(title: 'Business')
Category.create!(title: 'Personal')
Category.create!(title: 'Hacker News')
Category.create!(title: 'XBRL')
Category.create!(title: 'Near Field Communications')

