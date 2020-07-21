class UserSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :email
  attribute :my_daycares do |user|

    user.my_daycares.map do |my_daycare|
      {
        name: my_daycare.daycare.name,
        location: my_daycare.daycare.location,
        rating: my_daycare.daycare.rating,
        review_count: my_daycare.daycare.review_count,
        reviews: my_daycare.daycare.reviews,
        notes: my_daycare.notes,
        schedule_visit: my_daycare.schedule_visit,
        favorite: my_daycare.favorite
      }
    end
  end
end