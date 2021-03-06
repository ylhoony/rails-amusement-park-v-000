class RidesController < ApplicationController

  def new
    @ride = Ride.new
    @ride.user = User.find(params[:user_id])
    @ride.attraction = Attraction.find(params[:attraction_id])
    # binding.pry
    if @ride.take_ride === true
      @ride.save
      redirect_to user_path(@ride.user), notice: "Thanks for riding the #{@ride.attraction.name}!"
    else
      redirect_to user_path(@ride.user), notice: "#{@ride.take_ride}"
    end
  end

end
