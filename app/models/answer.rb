class Answer < ActiveRecord::Base
  belongs_to :answerer, class_name: "User"
  belongs_to :question
  belongs_to :challenge
  
end