class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :query
      t.integer :good_answer_index
      t.text :desc
      t.string :url
      t.integer :points, default: 1

      t.timestamps
    end
    add_column :questions, :answers, :string, array: true, default: '{}'
  end
end