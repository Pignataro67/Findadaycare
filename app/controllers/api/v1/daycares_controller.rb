Class Api::v1::DaycaresController < ApplicationController
  before_action :get_daycare, only [:show, :update, :destroy]

  def index
    @daycare = Daycare.ApplicationController
    render json: @daycare
  end
  
  private
  def get_daycare
    @daycare = Daycare.find(params[:id])
  end

  def daycare_params
    params.require(:daycare).permit(:name, :location, :rating, :review_count, :reviews, :yelp_id)
  end
end