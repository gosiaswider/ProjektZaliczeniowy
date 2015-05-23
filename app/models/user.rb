class User < ActiveRecord::Base
   validates :first_name, presence: true
   validates :last_name, presence: true
  
  has_and_belongs_to_many :tickets
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable
  
  include DeviseInvitable::Inviter
  
  def edit
    if User.exists?
      @user = User.find(params[:id])
    else
      redirect_to new_user_registration_path
    end
  end
  
  def full_name
    [first_name, last_name].join(' ')
  end
  
  def initials
    first_name[0] + last_name[0]
  end
end
