class UsersController < ApplicationController
  
  def new 
    @user = User.new 
  end 
  
 def create
    @user = User.find_by(name: params[:user][:password])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to :welcome 
    
    else 
      redirect_to '/login'
  end


  end 



end