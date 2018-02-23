class AttractionsController < ApplicationController
  before_action :logged_in?

  def index
    # binding.pry
    @attractions = Attraction.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end



end
