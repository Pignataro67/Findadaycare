class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :my_daycares, each_serializer: MyDaycareSerializer
  has_many :daycares, through: :my_daycares
end