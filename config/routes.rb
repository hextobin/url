Rails.application.routes.draw do
  get 'urls/shorten'
  resources :urls, only: [:create]
  # get 'urls/shorten'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
