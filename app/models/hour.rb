class Hour < ApplicationRecord
  belongs_to :gym

  validates :day,          presence: true, inclusion: { in: (1..7)  }
  validates :opening_time, presence: true, inclusion: { in: (0..24) }
  validates :closing_time, presence: true, inclusion: { in: (0..24) }
end
