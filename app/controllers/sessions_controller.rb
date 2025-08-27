class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  
  def new
    # Login form - no params needed here
  end
  
  def create
    email = params[:email]&.downcase
    password = params[:password]
    
    if email.blank? || password.blank?
      flash.now[:alert] = 'Please enter both email and password'
      render :new
      return
    end
    
    user = User.find_by(email: email)
    
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Welcome back!'
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logged out successfully'
  end
end
