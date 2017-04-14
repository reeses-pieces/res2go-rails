class Stat < ApplicationRecord

  belongs_to :user
  belongs_to :reservoir

  validates :min, :max, numericality: true
  validates :min, :max, numericality: {greater_than_or_equal_to: 0}
  validates :min, :max, numericality: {less_than_or_equal_to: 100}
end