class Reservoir < ApplicationRecord

  has_many :stats
  has_many :users, through: :stats
  
  def self.reservoir_url
    "http://cdec.water.ca.gov/cgi-progs/reservoirs?s=RES"
  end

  def percent_capacity
    (self.storage / self.capacity.to_f * 100).round(0)
  end

end
