class Api::V1::MyDaycaresController < ApplicationController
  before_action :get_user
  before_action :get_my_daycare, only: [:show, :update, :destroy]

  def index 
    @my_daycares = MyDaycare.all
    my_daycares_json = MyDaycareSerializer.new(@my_daycares).serialized_json
    render json: my_daycares_json
  end

  def show
    my_daycare_json = MyDaycareSerializer.new(@my_daycare).serialized_json
    render json: my_daycare_json
  end

  def create
    @my_daycare = MyDaycare.create(params[:my_daycare_params]) 
  end

  private

  def get_user
    @user = User.find(params[:user_id])
  end

  def get_my_daycare
    @my_daycare = MyDaycare.find(params[:id])
  end

  def my_daycare_params
    params.require(:my_daycare).permit(:user_id, :daycare_id, :notes, :schedule_visit, :favorite)
  end
end