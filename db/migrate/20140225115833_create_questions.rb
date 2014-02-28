class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :query
      t.string :possible_choices, array: true, default: '{}'
      t.integer :good_answer_index
      t.text :desc
      t.string :url
      t.integer :points, default: 1
      
      t.timestamps
    end
  end
end