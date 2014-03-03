class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :challenges, foreign_key: "champion_id"
  has_many :answers
  has_many :answered_questions, through: :answers, source: :question

end
