class Challenge < ActiveRecord::Base
	belongs_to :champion, class_name: "User"
  has_many :questions, through: :answers
  has_many :answers

  # accepts_nested_attributes_for :answers
  
end