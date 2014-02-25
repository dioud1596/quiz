class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :query
      t.integer :correct_answer_id
      t.text :desc
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
