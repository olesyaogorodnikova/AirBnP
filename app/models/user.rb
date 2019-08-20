class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :announces
  has_many :bookings
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :last_name, presence: true, uniqueness: { scope: :first_name }
  validates :fist_name, :email, :localisation, :password, presence: true
end
