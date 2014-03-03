class Challenge < ActiveRecord::Base
	belongs_to :champion, class_name: "User"
  has_and_belongs_to_many :questions
  has_many :answers

  # accepts_nested_attributes_for :answers
  
end