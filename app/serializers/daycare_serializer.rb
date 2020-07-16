class DaycareSerializer < ActiveModel::Serializer
  attributes :id, :name, :locations, :rating, :reviews
end  