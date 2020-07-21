Class Api::v1::DaycaresController < ApplicationController
  before_action :get_daycare, only [:show, :update, :destroy]

  def index
    @daycares = Daycare.all
    daycares_json = DaycareSerializer.new(@daycares).serialized_json
    render json: @daycares_json	        
  end
  
  private
  def get_daycare
    @daycare = Daycare.find(params[:id])
  end

  def daycare_params
    params.require(:daycare).permit(:name, :location, :rating, :review_count, :reviews, :yelp_id)
  end
end