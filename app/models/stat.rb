class Stat < ApplicationRecord

  belongs_to :user
  belongs_to :reservoir

  # validates :reservoir, presence: true
  # validates_numericality_of :min, :greater_than => 0, :less_than => 100, :message => "Must be between 1 and 99"
  # validates_numericality_of :max, :greater_than => 0, :less_than => 100, :message => "Must be between 1 and 99"

  # validates :min, :max, numericality: true
end