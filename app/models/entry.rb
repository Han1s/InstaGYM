class Entry < ApplicationRecord
  belongs_to :gym

  validates :number_of_entries, presence: true
  validates :duration,          presence: true
  validates :position,          presence: true, inclusion: { in: (1..3) }
end
