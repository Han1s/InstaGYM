class Photo < ApplicationRecord
  belongs_to :gym

  validates :source,    presence: true
end
