class UsersController < ApplicationController

  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :correct_user, only: [:edit, :update]


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def everyone
    @users = User.all
  end


end