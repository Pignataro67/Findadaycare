class RevieweSerializer < ActiveModel::Serializer
  attributes :id, :notes, :schedule_visit, :favorite, :daycare_id, :review
  belongs_to :daycare
end  