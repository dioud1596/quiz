class Question < ActiveRecord::Base
  has_many :answers
  has_many :answerers, through: :answers, source: :user
  has_and_belongs_to_many :challenges

  # accepts_nested_attributes_for :answers

  # def good_answer
  #   answers[good_answer_index]
  # end

end
