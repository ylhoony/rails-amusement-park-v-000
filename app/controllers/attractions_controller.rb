class AttractionsController < ApplicationController
  before_action :logged_in?

  def index
    # binding.pry
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create

  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def edit

  end

  def update

  end

  private
    def attraction_params
      params.require(:attraction).permit()
    end


end
