class ChallengesController < ApplicationController

	def index
		@challenges = Challenge.all
	end

	def create
		@challenge = Challenge.new
	end

	def show
		@challenge
	end

end