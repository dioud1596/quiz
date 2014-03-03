class Answer < ActiveRecord::Base
  belongs_to :answerer, class_name: "User"
  belongs_to :question
  belongs_to :challenge

  # accepts_nested_attributes_for :questions
  # accepts_nested_attributes_for :challenges
  # accepts_nested_attributes_for :users
end