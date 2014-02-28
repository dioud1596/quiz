class Challenge < ActiveRecord::Base
	belongs_to :champion, class_name: "User"
  has_and_belongs_to_many :questions
  
end