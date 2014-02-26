class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :champion_id
      t.string :invite_key
      t.integer :score

      t.timestamps
    end
  end
end
