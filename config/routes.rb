Rails.application.routes.draw do
  resources :genres

  resources :favorites

   resource :session
   get "signup" => "users#new"
   resources :users

  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end
end
