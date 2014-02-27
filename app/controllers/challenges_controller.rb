class ChallengesController < ApplicationController

	def index
		@challenges = Challenge.all
	end

	def new
		# @questions = current_user.pick_questions
	end

	def create
		# le taf !
	end

	def show
		@test = Question.all
	end

end



