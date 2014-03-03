class AnswersController < ApplicationController

	def index
	end

	def show
	end

	def new
		@answer = Answer.new
	end

	def create
		@answer = current_user.answers.build(params[:answer])

	    respond_to do |format|
	      if @answer.save
	        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @challenge }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @challenge.errors, status: :unprocessable_entity }
	      end
	    end
  end

 private

  def answer_params
    params.require(:answer).permit(:user_id, :question_id, :chosen_answer_index)
  end

end


