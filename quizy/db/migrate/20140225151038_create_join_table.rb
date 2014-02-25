class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :challenges, :questions do |t|
      t.index [:challenge_id, :question_id]
      t.index [:question_id, :challenge_id]
      t.integer :position
      t.integer :score
    end
  end
end