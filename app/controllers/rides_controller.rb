class RidesController < ApplicationController

  def new
    binding.pry
    @ride = Ride.new
  end

end
