Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'birds',	to: 'birds#index'
  # get 'birds/:id', to: 'birds#show'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :birds
end
