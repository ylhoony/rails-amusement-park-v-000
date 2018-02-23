class SessionsController < ApplicationController

  def new # '/signin'
    @session = User.new
  end

  def create
    if current_user
      redirect_to users_path
    else
      @user = User.find_by(name: session_params[:name])
      return redirect_to signin_path unless @user.try(:authenticate, session_params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

  def session_params
    params.require(:user).permit(:name, :password)
  end

end
