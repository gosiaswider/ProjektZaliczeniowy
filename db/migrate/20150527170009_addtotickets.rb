class Addtotickets < ActiveRecord::Migration
  def change
    add_column :tickets, :created_by_id, :int
  end
end
