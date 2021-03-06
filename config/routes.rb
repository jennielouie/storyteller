Mango::Application.routes.draw do

  root to: "images#index"

  resources :feedbacks
  resources :narratives
  resources :writers
  resources :images
  resources :identities

  match "/auth/:provider/callback" => "sessions#create"
  match "auth/failure", to: redirect('/')
  match "/signout" => "sessions#destroy", :as => :signout
end
