class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.string :priority
      t.string :difficulty
      t.string :status
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :tickets, :projects
  end
end
