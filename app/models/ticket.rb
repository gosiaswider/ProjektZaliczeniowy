class Ticket < ActiveRecord::Base
  belongs_to :project
  validates :tittle, presence: true
  validates :description, presence: true
  validates :priority, presence: true
end
