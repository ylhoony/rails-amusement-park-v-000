class RidesController < ApplicationController

  def new
    binding.pry
    @ride = Ride.new
    @ride.user = User.find(params[:user_id])
    @ride.attraction = Attraction.find(params[:attraction_id])
  end

end
