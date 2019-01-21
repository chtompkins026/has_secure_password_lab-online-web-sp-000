class SessionsController < ApplicationController
  
  def new 
    @user = User.new 
  end 
  
 def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to :welcome 
    else 
      flash[:error] = "Login is incorrect, please try again"
      redirect_to :login
    end 
  end

  
end 