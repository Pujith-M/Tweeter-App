class Users::ProfileController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @tweeets = @user.tweeets.all.order("created_at DESC")
    @tweeet = Tweeet.new
    @users = User.all.order("created_at DESC")
  end
  
end