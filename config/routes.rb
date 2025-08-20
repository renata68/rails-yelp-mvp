Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # Root path – kam se dostaneš po načtení
  root "restaurants#index"
   # List all restaurants, the visitor can se all the list
  get "restaurants", to: "restaurants#index"

  # Form to add a new restaurant
  get "restaurants/new", to: "restaurants#new"

  # Create a new restaurant
  post "restaurants", to: "restaurants#create"

  # Show details of a single restaurant (with its reviews)
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # Form to add a new review for a restaurant
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review

  # Create a new review for a restaurant
  post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
end
