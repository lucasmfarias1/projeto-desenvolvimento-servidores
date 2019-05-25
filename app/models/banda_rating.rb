class BandaRating < ApplicationRecord
  belongs_to :banda
  belongs_to :user

  validates :nota, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
end
