class AttractionsController < ApplicationController
  before_action :logged_in?

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    binding.pry
    
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
      params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
    end

end
