class UsersController < ApplicationController
  
  def new 
    @user = User.new 
  end 
  
 def create
    @user = User.find_by(username: params[:user][:password])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end


  end 



end