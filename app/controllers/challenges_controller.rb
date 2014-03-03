class ChallengesController < ApplicationController

	def index
		@challenges = Challenge.all
	end

	def new
		@challenge = Challenge.new
		@questions = Question.all.limit(3)
		
		@questions.each do |q|
			@challenge.answers.build(question: q, answerer: current_user)
		end

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

	# def user_choice
	# end

	# def check
	# 	@quizz = Question.find(params[:id])
	# 		respond_to do |format|
	# 		if params[:ans][0].to_i == @question.good_answer_index
	# 			flash[:notice] = "<b>Congratulation. You gave the correct answer to the question: " + @quizz.query + "</b>" 
	# 			format.html { redirect_to({:controller => "quizzs", :action => "answering",:id=>"1" } ) }
	# 			format.xml { head :ok }
	# 		else
	# 			flash[:notice] = "<b p style='color: red'>I am sorry but that is not the right answer to the question: " + @quizz.query + "</b>"
	# 			format.html { redirect_to({:controller => "quizzs", :action => "answering",:id=>"1" } ) }
	# 			format.xml { head :ok }
	# 		end
	# 	end
	# end

 private

  def challenge_params
    params.require(:challenge).permit(:champion_id, :invite_key, :score, :challenge_questions, :chosen_answers)
    	# :questions_attributes => [:id, :query],
     #  	:answers_attributes => [:id, :answerer_id, :question_id, :chosen_answer_index ])
  end

end



