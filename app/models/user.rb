class User < ApplicationRecord
  has_many :ideas
  has_many :tweets
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  EMAIL_REGAX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  with_options presence: true do
    validates :nickname, uniqueness: true
    validates :email, uniqueness: true, format: { with: EMAIL_REGAX }
    validates :password, length: { minimum: 6 }
  end
end
