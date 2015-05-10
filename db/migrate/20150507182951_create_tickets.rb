class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :tittle
      t.string :description
      t.string :priority
      t.string :difficulty
      t.string :status

      t.timestamps null: false
    end
  end
end
