class Project < ActiveRecord::Base
  has_many :tickets, dependent: :destroy
  validates :name, presence: true, length: { minimum: 5 }
  
  def name
    name
  end
  
  def description
    description
  end
  
  def initials
    name[0]
  end
end
