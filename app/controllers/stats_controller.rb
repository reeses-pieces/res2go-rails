class StatsController < ApplicationController

  def new
    @user = current_user
    @stat = Stat.new
    @reservoirs = Reservoir.all
  end

  def create
    @reservoir = Reservoir.find_by(name: params["reservoir_name"])
    @stat = Stat.new(user_id: current_user.id,
                     reservoir_id: @reservoir.id,
                     min: params["min"],
                     max: params["max"])
    if @stat.save
      redirect_to user_path(current_user)
    else
      redirect_to new_stat_path(@stat)
    end
  end

  def edit
    @stat = Stat.find(params[:id])
  end

  def update
    @stat = Stat.find(params[:id])
    @stat.update(min: params["stat"][:min], max: params["stat"][:max])
    redirect_to user_path
  end

  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    redirect_to user_path
  end
  
end
