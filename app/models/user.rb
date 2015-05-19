class User < ActiveRecord::Base
   validates :first_name, presence: true
   validates :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:invitable
  
  def full_name
    [first_name, last_name].join(' ')
  end
  
  def initials
    first_name[0] + last_name[0]
  end
end
