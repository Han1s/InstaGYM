class Gym < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  has_many :hours, class_name: "Hour", foreign_key: "gym_id"
  has_many :photos, class_name: "Photo", foreign_key: "gym_id"
  has_many :reviews, class_name: "Review", foreign_key: "user_id"

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :description, presence: true
end
