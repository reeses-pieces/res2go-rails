class StatsController < ApplicationController

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
