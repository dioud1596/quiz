class Question < ActiveRecord::Base
  has_many :answers
  has_many :answerers, through: :answers, source: :user
  has_many :challenges, through: :answers
  
end
