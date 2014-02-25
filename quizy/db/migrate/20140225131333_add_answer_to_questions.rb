class AddAnswerToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :good_answer, :string
    add_column :questions, :bad_answer_1, :string
    add_column :questions, :bad_answer_2, :string
    add_column :questions, :bad_answer_3, :string
  end
end