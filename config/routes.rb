Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :api do
      resources :users do
        resources :mydaycares 
      end
        resources :daycares
    end
  end
end