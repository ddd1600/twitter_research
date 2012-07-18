class Note < ActiveRecord::Base
  attr_accessible :text

	validates :note_text, presence: true
	belongs_to :tweet
	#"tweets have notes"---RAILS IS ASSUMING THAT THE NOTES MIGRATION ADDS A FOREIGN KEY
	belongs_to :user
end
