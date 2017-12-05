class ApplicationController < ActionController::API
  # include ActionController::HttpAuthentication::Token::ControllerMethods
# e45c98dcea1d369dab4a7fac9fe863c2c0e95237bdc8352c5ddd47fe9f0bd9e53f318e2bc9c587a40b3e303760a03e3a6c2f867e452aff260d6f49efa7766b1f


def issue_token(payload)
    JWT.encode(payload, 'e45c98dcea1d369dab4a7fac9fe863c2c0e95237bdc8352c5ddd47fe9f0bd9e53f318e2bc9c587a40b3e303760a03e3a6c2f867e452aff260d6f49efa7766b1f', "HS256")
  end


  def current_user
    # authenticate_or_request_with_http_token do |jwt_token, options|
    
      begin
        decoded_token = JWT.decode(token, "e45c98dcea1d369dab4a7fac9fe863c2c0e95237bdc8352c5ddd47fe9f0bd9e53f318e2bc9c587a40b3e303760a03e3a6c2f867e452aff260d6f49efa7766b1f", "HS256")

      rescue JWT::DecodeError
        return nil
      end


      if decoded_token[0]["user_id"]
        @current_user ||= User.find(decoded_token[0]["user_id"])
      end
    # end
  end



  def authorized
    render json: {message: "Not welcome" }, status: 401 unless logged_in?
  end




  def token
    request.headers['Authorization']
  end

  def decoded_token(token)
    begin
      # [{user_id: 1}, {algo: 'hs256'}]
      JWT.decode(token, 'e45c98dcea1d369dab4a7fac9fe863c2c0e95237bdc8352c5ddd47fe9f0bd9e53f318e2bc9c587a40b3e303760a03e3a6c2f867e452aff260d6f49efa7766b1f', true, { :algorithm => 'HS256' })
    rescue JWT::DecodeError
      [{}]
    end
  end

  def user_id
    decoded_token.first['user_id']
  end

  def logged_in?
    !!current_user
  end
end
