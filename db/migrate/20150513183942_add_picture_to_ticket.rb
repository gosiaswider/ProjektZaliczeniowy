class AddPictureToTicket < ActiveRecord::Migration
  def self.up
    change_table :tickets do |t|
      t.attachment :picture
    end
  end

  def self.down
      remove_attachment :ticktets, :picture
  end
end
