class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :gyms, class_name: "Gym", foreign_key: "user_id"
  # has_many :reviews, class_name: "Review", foreign_key: "user_id"  # Not needed atm

  validates :first_name,    presence: true
  validates :last_name,     presence: true
  validates :phone_number,  presence: true, uniqueness: true
  validates :email,         presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
