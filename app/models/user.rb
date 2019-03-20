class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :recoverable
  #:registerable, :recoverable, :confirmable, :rememberable, :trackable, :recoverable, :validatable, :lockable  

  #All permisions
  User::ROLE_ADMIN   = "admin"

  # read/write on resources level 1
  User::ROLE_POSTER  = "poster"
  
  def is_admin?
    role == User::ROLE_ADMIN
  end

  def is_poster?
    role == User::ROLE_POSTER
  end


end
