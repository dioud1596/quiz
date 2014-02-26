class RenameUserLastNameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :last_nane, :last_name
  end
end
