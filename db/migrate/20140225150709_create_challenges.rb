class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.belongs_to :champion
      t.string :invite_key
      t.integer :score

      t.timestamps
    end
  end
end
