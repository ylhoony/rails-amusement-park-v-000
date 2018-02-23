class RidesController < ApplicationController

  def new
    # binding.pry
    @ride = Ride.new
    @ride.user = User.find(params[:user_id])
    @ride.attraction = Attraction.find(params[:attraction_id])
    @ride.save
    @ride.take_ride
    redirect_to user_path(@ride.user), notice: @ride.take_ride
  end

end
