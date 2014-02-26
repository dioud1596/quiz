class Challenge < ActiveRecord::Base
	belongs_to :champion, class_name: "User"
	has_many :questions
end