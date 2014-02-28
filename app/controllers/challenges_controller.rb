class ChallengesController < ApplicationController

	def index
		@challenges = Challenge.all
	end

	def new
		@challenge = Challenge.new
		@challenge.questions = Question.all
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

	def answers
		@answerers = User.all
		@questions = @challenge.questions
  end

 private

  def challenge_params
    params.require(:challenge).permit(:champion_id, :invite_key, :score, :challenge_questions,
    	:questions_attributes => [:id, :query,
      	:answers_attributes => [:id, :chosen_answer_index, :answerer_id]
        	])
  end

end



