class UsersController < ApplicationController

  # before_action :set_user, only: [:show, :edit, :update, :destroy]



  def index
    @users = User.all
  end

  def show
    @user = User.all
  end
  

end