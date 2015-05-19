class AddConfirm < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string   :confirmed_at
      t.string :confirmation_sent_at
      t.string :unconfirmed_email
      t.string :confirmation_token
    end
  end
end
