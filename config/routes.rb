Rails.application.routes.draw do
  
  resources :items
  resources :users
  resources :bids
  get '/' => "site#home"

end
