class DeleteColumn < ActiveRecord::Migration
  def change
    remove_column :users, :project_leader, :boolean
  end
end
