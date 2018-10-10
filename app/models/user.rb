class User < ApplicationRecord
  after_create  :send_confirmation_instructions, :if => :confirmation_required?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :timeoutable

  has_many :posts
  has_many :comments

end