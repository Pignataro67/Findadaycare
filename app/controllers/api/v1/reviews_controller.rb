class Api::V1::ReviewsController < ApplicationController
  before_action :get_user
  before_action :get_review, only: [:show, :update, :destroy]

  def index 
    @all_review = Review.all
    render json: @all_review
  end

  def show
    render json: @review
  end

  def create
    @review = Review.create(params[:review_params]) 
  end

  private
  def get_review
    @review = Review.find(params[:id])
  end

  def get_user
    @user = User.find(params[:user_id])
  end

  def review_params
    params.require(:review).permit(:user_id, :daycare_id, :notes, :schedule_visit, :favorite)
  end
end