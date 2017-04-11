class ReservoirsController < ApplicationController

  def index
    @reservoirs = Reservoir.all
  end
end
