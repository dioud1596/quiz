class Question < ActiveRecord::Base
  has_and_belongs_to_many :challenges
  has_many :answers
  has_many :answerers, through: :answers, source: :user

  # def good_answer
  #   answers[good_answer_index]
  # end

end
