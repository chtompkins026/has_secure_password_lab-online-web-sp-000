class UsersController < ApplicationController
  
  def new 
    @user = User.new 
  end 
  
  def create 
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id 
      redirect_to :welcome 
    else 
      redirect_to :new_user 
    end 
  end 
  
  private 
  
  def user_params
    
  end 


end