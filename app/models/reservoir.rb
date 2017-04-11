class Reservoir < ApplicationRecord
  
  def percent_capacity
    (self.storage / self.capacity.to_f * 100).round(0)
  end
end
