class Api::V1::UsersController < ApplicationController
  before_action :get_user, only: [:show, :update, :destroy]

  def show
    render json: @user
  end
end