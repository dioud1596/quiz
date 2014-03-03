class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :challenge
      t.belongs_to :answerer
      t.belongs_to :question
      t.integer :chosen_answer_index

      t.timestamps
    end
  end
end