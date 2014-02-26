class Question < ActiveRecord::Base
  has_and_belongs_to_many :challenges

  def good_answer
    answers[good_answer_index]
  end

end
