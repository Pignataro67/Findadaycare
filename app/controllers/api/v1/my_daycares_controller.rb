class Api::V1::MyDaycaresController < ApplicationController
  before_action :get_user
  before_action :get_my_daycare, only: [:show, :update, :destroy]

  def index 
    @all_mydaycare = MyDaycare.all
    render json: @all_mydaycare
  end

  def show
    render json: @my_daycare
  end
end