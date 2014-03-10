Mango::Application.routes.draw do

  root to: "images#index"

  resources :feedbacks
  resources :narratives
  resources :writers
  resources :images

  match "/auth/:provider/callback" => "sessions#create"
  math "auth/failure", to: redirect('/')
  match "/signout" => "sessions#destroy", :as => :signout
end
