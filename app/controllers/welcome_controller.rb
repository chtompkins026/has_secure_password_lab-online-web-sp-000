class WelcomeController < ApplicationController
  def new
    @user = User.find_by(name: params[:name])
  end
end