class ChangeUser < ActiveRecord::Migration
  def change
    change_column :users, :project_leader,  :string
  end
end
