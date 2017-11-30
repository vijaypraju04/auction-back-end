class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
      respond_to do |format|
      format.json { render json: @user }
    end
  end

  def create
    byebug
    @user = User.create(user_params)
    render json: @user
  end


  private

  def user_params
    params.require(:user).permit(:username, :amount)
  end


end
