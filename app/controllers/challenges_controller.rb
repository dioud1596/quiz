class ChallengesController < ApplicationController

	def index
		@challenges = Challenge.all
	end

	def new
		challenge = current_user.challenges.create
		questions = Question.all.limit(3)
		
		questions.each do |q|
			challenge.answers.create(question: q, answerer: current_user)
		end

		redirect_to [challenge, challenge.answers.first]
	end

	def create
		@challenge = current_user.challenges.build(params[:challenge])
		
	    respond_to do |format|
	      if @challenge.save
	        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @challenge }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @challenge.errors, status: :unprocessable_entity }
	      end
	    end
  end

	def show
	end

 private

  def challenge_params
    params.require(:challenge).permit(:champion_id, :invite_key, :score, :challenge_questions, :chosen_answers)
  end

end



