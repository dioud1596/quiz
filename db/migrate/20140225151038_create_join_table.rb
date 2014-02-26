class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :challenges, :questions do |t|
      t.index [:challenge_id, :question_id]
      t.index [:question_id, :challenge_id]
    end
  end
end