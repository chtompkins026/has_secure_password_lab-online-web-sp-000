class WelcomeController < ApplicationController
  def new
    @user = User.find_by(username: params[:username])
  end
end