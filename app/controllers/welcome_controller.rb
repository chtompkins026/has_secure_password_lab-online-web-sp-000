class WelcomeController < ApplicationController
  def new
    @user = User.find_by(id: params[:name])
  end
end