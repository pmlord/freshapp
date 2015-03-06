class UserSessionsController < ApplicationController
  
  before_filter :require_logout, only: [:new, :create]
  
  def new
    # @user = User.new
  end
  
  def create
    if user = login(login_params[:email], login_params[:password], login_params[:remember_me])
      redirect_back_or_to root_path
    else
      @login_failed = true
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to root_path
  end
  
  
  private
  
  def login_params
    params.require(:user)
  end
  
end
