class Api::V1::SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def show
    render json: {
    id: current_user.id,
    username: current_user.username
  }
  end

  def create
    # byebug
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { jwt: token, yay: true }
    else
      render json: { error: "kenneth"}
    end
  end

  def login
  @user = User.find_by(username: params[:username])
  if @user.password == params[:password]
    give_token
  else
    redirect_to home_url
  end
end
end
