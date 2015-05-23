class ChangeSomeTables < ActiveRecord::Migration
   add_foreign_key :tickets, :users
end
