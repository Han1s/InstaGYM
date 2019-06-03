class OpeningHour < ApplicationRecord
  belongs_to :gym, class_name: "Gym", foreign_key: "gym_id"

  validates :week_day, presence: true, inclusion: { in: 1..7 }
  validates :opening_time, presence: true
  validates :closing_time, presence: true
end
