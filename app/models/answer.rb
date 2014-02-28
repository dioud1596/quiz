class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  accepts_nested_attributes_for :questions
end