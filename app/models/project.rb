class Project < ActiveRecord::Base
  has_many :tickets, dependent: :destroy
  has_and_belongs_to_many :members, :class_name =>"User", :foreign_key =>"member_project_id", :association_foreign_key => "member_id"
   
  validates :name, presence: true
  
end
