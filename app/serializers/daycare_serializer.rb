class DaycareSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :rating, :review_count, :reviews, :yelp_id
end  