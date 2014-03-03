class AnswersController < ApplicationController
	before_action :set_challenge
	before_action :set_answer, only: [:show, :update]

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

  def update
  	respond_to do |format|
      if @answer.update(answer_params)
      	next_answer = @challenge.answers.where(chosen_answer_index: nil).first
        format.html { redirect_to [@challenge, next_answer] }
      else
        format.html { render action: 'show' }        
      end
    end
  end

 private

 	def set_challenge
 		@challenge = Challenge.find(params[:challenge_id])
 	end

 	def set_answer
 		@answer = Answer.find(params[:id])
 	end

  def answer_params
    params.require(:answer).permit(:chosen_answer_index)
  end

end


