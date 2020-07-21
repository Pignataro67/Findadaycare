class DaycareSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :location, :rating, :review_count, :reviews, :yelp_id
  has_many :my_daycares
  has_many :users, through: :my_daycares
end  