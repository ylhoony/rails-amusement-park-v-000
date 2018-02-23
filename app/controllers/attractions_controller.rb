class AttractionsController < ApplicationController
  before_action :logged_in?

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    # binding.pry
    @attraction = Attraction.new(attraction_params)
    return redirect_to attractions_path unless current_user.admin == true
    if @attraction.save
      redirect_to attraction_path(@attraction)
    else
      redirect_to attractions_path
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
  end

  private

    def attraction_params
      params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
    end

end
