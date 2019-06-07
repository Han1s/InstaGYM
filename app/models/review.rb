class Review < ApplicationRecord
  belongs_to :user
  belongs_to :gym

  validates :rating, presence: true, inclusion: { in: (1..5) }
end
