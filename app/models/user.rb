class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :challenges, foreign_key: "champion_id"
  has_many :answers
  has_many :answered_questions, through: :answers, source: :question

  def pick_questions
  	# user.unanswered_questions....
  end
  
end
