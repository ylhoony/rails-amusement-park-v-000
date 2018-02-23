class UsersController < ApplicationController
  before_action :logged_in?
  skip_before_action :logged_in?, only: [:new, :create]

  def index

  end

  def new # '/sign up'
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render new_user_path
    end
  end

  def show
    binding.pry
    @user = User.find(params[:id])

  end

  def edit

  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :happiness, :nausea, :tickets, :height, :admin)
    end

end
