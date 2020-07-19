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
end