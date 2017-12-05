class Api::V1::SessionsController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def show
    # id = decoded_token(request.headers['Authorization'].split(" ")[1])
    # user = User.find_by(id: id[0]['user_id'])
    if current_user
      render json: {
        id: current_user.id,
        username: current_user.username
      }
    end
  end
  # def show
  #   # id = decoded_token(request.headers['Authorization'].split(" ")[1])
  #   token = request.headers['Authorization']
  #   user = User.find_by(id: token)
  #
  #   if logged_in?
  #     render json: { id: current_user.id, username: current_user.username }
  #   else
  #     render json: {error: 'No user could be found'}, status: 401
  #   end
  # end

  def create
    # 
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { id: user.id, username: user.username, jwt: token }
    else
      render json: { error: "kenneth"}
    end
  end

#   def login
#   @user = User.find_by(username: params[:username])
#   if @user.password == params[:password]
#     give_token
#   else
#     redirect_to home_url
#   end
# end
end
