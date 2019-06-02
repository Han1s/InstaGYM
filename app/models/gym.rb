class Gym < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :description, presence: true
end
