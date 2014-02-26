class Question < ActiveRecord::Base
	has_many :answers
	has_one :good_answer, class_name: "Answer"	
end
