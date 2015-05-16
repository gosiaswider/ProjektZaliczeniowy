class AddLeaderColumn < ActiveRecord::Migration
  def change
    add_column :users, :project_leader, :boolean, :default => false
  end
end
