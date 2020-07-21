class Api::V1::SessionsController < ApplicationController

  def create 
    @user = User.find_by(username: params[:sessions][:username])

    if @user && @user.authenticate(params[:sessions][:password])
      session[:user_id] = @user.id 
        return json: @user 
      else
        render json: {
          error: "Invalid Credentials"
        }
    end
  end

  def get_current_user
    if logged_in? 
      render json: current_user 
    else
      render json: {
       error: "No one logged in"
      }
    end
  end
end